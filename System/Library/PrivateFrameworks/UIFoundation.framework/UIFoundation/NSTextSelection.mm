@interface NSTextSelection
+ (id)descriptionForAffinity:(int64_t)affinity;
+ (id)descriptionForGranularity:(int64_t)granularity;
- (BOOL)_containsLocation:(id)location rangeIndex:(unint64_t *)index;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextSelection:(id)selection;
- (NSTextSelection)initWithCoder:(NSCoder *)coder;
- (NSTextSelection)initWithLocation:(id)location affinity:(NSTextSelectionAffinity)affinity;
- (NSTextSelection)initWithRange:(NSTextRange *)range affinity:(NSTextSelectionAffinity)affinity granularity:(NSTextSelectionGranularity)granularity;
- (NSTextSelection)initWithRanges:(NSArray *)textRanges affinity:(NSTextSelectionAffinity)affinity granularity:(NSTextSelectionGranularity)granularity;
- (NSTextSelection)textSelectionWithTextRanges:(NSArray *)textRanges;
- (id)description;
- (id)textRangeContainingLocation:(id)location;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setTypingAttributes:(NSDictionary *)typingAttributes;
@end

@implementation NSTextSelection

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextSelection;
  [(NSTextSelection *)&v3 dealloc];
}

- (NSTextSelection)initWithRanges:(NSArray *)textRanges affinity:(NSTextSelectionAffinity)affinity granularity:(NSTextSelectionGranularity)granularity
{
  v11.receiver = self;
  v11.super_class = NSTextSelection;
  v8 = [(NSTextSelection *)&v11 init];
  if (v8)
  {
    v9 = [(NSArray *)textRanges copy];
    v8->_granularity = granularity;
    v8->_affinity = affinity;
    v8->_textRanges = v9;
  }

  return v8;
}

- (NSTextSelection)initWithRange:(NSTextRange *)range affinity:(NSTextSelectionAffinity)affinity granularity:(NSTextSelectionGranularity)granularity
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = range;
  return -[NSTextSelection initWithRanges:affinity:granularity:](self, "initWithRanges:affinity:granularity:", [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1], affinity, granularity);
}

- (NSTextSelection)initWithLocation:(id)location affinity:(NSTextSelectionAffinity)affinity
{
  v6 = [[NSTextRange alloc] initWithLocation:location];

  return [(NSTextSelection *)self initWithRange:v6 affinity:affinity granularity:0];
}

- (NSTextSelection)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v5 = [(NSCoder *)coder decodeIntegerForKey:@"NS.flags"];
    self->_textRanges = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.textRanges"];
    self->_granularity = [(NSCoder *)coder decodeIntegerForKey:@"NS.granularity"];
    [(NSCoder *)coder decodeDoubleForKey:@"NS.anchorPositionOffset"];
    self->_anchorPositionOffset = v6;
    self->_secondarySelectionLocation = [(NSCoder *)coder decodeObjectForKey:@"NS.secondarySelectionLocation"];
    self->_affinity = v5 & 0xF;
    self->_transient = HIBYTE(v5) & 1;
    self->_logical = (v5 & 0x200) != 0;
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v5 = 256;
    if (!self->_transient)
    {
      v5 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFF0 | self->_affinity & 0xF;
    v7 = 512;
    if (!self->_logical)
    {
      v7 = 0;
    }

    [coder encodeInteger:v6 | v7 forKey:@"NS.flags"];
    [coder encodeObject:self->_textRanges forKey:@"NS.textRanges"];
    [coder encodeInteger:self->_granularity forKey:@"NS.granularity"];
    [coder encodeDouble:@"NS.anchorPositionOffset" forKey:self->_anchorPositionOffset];
    secondarySelectionLocation = self->_secondarySelectionLocation;

    [coder encodeObject:secondarySelectionLocation forKey:@"NS.secondarySelectionLocation"];
  }
}

- (BOOL)_containsLocation:(id)location rangeIndex:(unint64_t *)index
{
  textRanges = [(NSTextSelection *)self textRanges];
  *index = 0x7FFFFFFFFFFFFFFFLL;
  if ([-[NSArray firstObject](textRanges "firstObject")])
  {
LABEL_6:
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [(NSArray *)textRanges count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v10 = [(NSArray *)textRanges objectAtIndexedSubscript:v9];
        if ([location compare:{objc_msgSend(v10, "endLocation")}] == -1)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_6;
        }
      }

      *index = v9;
      LOBYTE(v7) = [objc_msgSend(v10 "location")] != 1;
    }
  }

  return v7;
}

- (id)textRangeContainingLocation:(id)location
{
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (![(NSTextSelection *)self _containsLocation:location rangeIndex:&v6])
  {
    return 0;
  }

  textRanges = [(NSTextSelection *)self textRanges];
  return [(NSArray *)textRanges objectAtIndexedSubscript:v6];
}

- (void)setTypingAttributes:(NSDictionary *)typingAttributes
{
  objc_sync_enter(self);
  v5 = [NSAttributeDictionary newWithDictionary:typingAttributes];

  self->_typingAttributes = v5;

  objc_sync_exit(self);
}

- (NSTextSelection)textSelectionWithTextRanges:(NSArray *)textRanges
{
  selfCopy = self;
  if (![(NSArray *)textRanges isEqualToArray:[(NSTextSelection *)self textRanges]])
  {
    v5 = [[NSTextSelection alloc] initWithRanges:textRanges affinity:[(NSTextSelection *)selfCopy affinity] granularity:[(NSTextSelection *)selfCopy granularity]];
    [(NSTextSelection *)v5 setLogical:[(NSTextSelection *)selfCopy isLogical]];
    [(NSTextSelection *)v5 setSecondarySelectionLocation:[(NSTextSelection *)selfCopy secondarySelectionLocation]];
    [(NSTextSelection *)v5 setTypingAttributes:[(NSTextSelection *)selfCopy typingAttributes]];
    [(NSTextSelection *)v5 setSelectionAnchorLocation:[(NSTextSelection *)selfCopy selectionAnchorLocation]];
    return v5;
  }

  return selfCopy;
}

- (BOOL)isEqualToTextSelection:(id)selection
{
  if (self == selection)
  {
    goto LABEL_16;
  }

  v5 = -[NSArray isEqualToArray:](self->_textRanges, "isEqualToArray:", [selection textRanges]);
  if (v5)
  {
    granularity = self->_granularity;
    if (granularity != [selection granularity] || (affinity = self->_affinity, affinity != objc_msgSend(selection, "affinity")) || (transient = self->_transient, transient != objc_msgSend(selection, "isTransient")) || (logical = self->_logical, logical != objc_msgSend(selection, "isLogical")) || (anchorPositionOffset = self->_anchorPositionOffset, objc_msgSend(selection, "anchorPositionOffset"), anchorPositionOffset != v11))
    {
      LOBYTE(v5) = 0;
      return v5;
    }

    secondarySelectionLocation = self->_secondarySelectionLocation;
    if (secondarySelectionLocation == [selection secondarySelectionLocation] || (v5 = -[NSTextLocation isEqual:](self->_secondarySelectionLocation, "isEqual:", objc_msgSend(selection, "secondarySelectionLocation"))) != 0)
    {
      typingAttributes = self->_typingAttributes;
      if (typingAttributes == [selection typingAttributes] || (v5 = -[NSDictionary isEqualToDictionary:](self->_typingAttributes, "isEqualToDictionary:", objc_msgSend(selection, "typingAttributes"))) != 0)
      {
        selectionAnchorLocation = self->_selectionAnchorLocation;
        if (selectionAnchorLocation != [selection selectionAnchorLocation])
        {
          v15 = self->_selectionAnchorLocation;
          selectionAnchorLocation = [selection selectionAnchorLocation];

          LOBYTE(v5) = [(NSTextLocation *)v15 isEqual:selectionAnchorLocation];
          return v5;
        }

LABEL_16:
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSTextSelection *)self isEqualToTextSelection:equal];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_textRanges hash];
  v4 = [(NSTextLocation *)self->_secondarySelectionLocation hash]+ v3;
  v5 = [(NSDictionary *)self->_typingAttributes hash];
  return v4 + v5 + [(NSTextLocation *)self->_selectionAnchorLocation hash]+ self->_affinity + self->_granularity;
}

+ (id)descriptionForGranularity:(int64_t)granularity
{
  if (granularity > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E726E540[granularity];
  }
}

+ (id)descriptionForAffinity:(int64_t)affinity
{
  v3 = @"unknown";
  if (affinity == 1)
  {
    v3 = @"downstream";
  }

  if (affinity)
  {
    return v3;
  }

  else
  {
    return @"upstream";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [objc_opt_class() descriptionForGranularity:self->_granularity];
  v6 = [objc_opt_class() descriptionForAffinity:self->_affinity];
  transient = self->_transient;
  if (self->_anchorPositionOffset == 0.0)
  {
    v8 = &stru_1F01AD578;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@", anchor position offset=%f", *&self->_anchorPositionOffset];
  }

  if (self->_selectionAnchorLocation)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@", anchor location %@", self->_selectionAnchorLocation];
  }

  else
  {
    v9 = &stru_1F01AD578;
  }

  v10 = @", transient";
  if (!transient)
  {
    v10 = &stru_1F01AD578;
  }

  return [v3 stringWithFormat:@"%@:<%p> granularity=%@, affinity=%@%@%@%@, textRanges=%@", v4, self, v5, v6, v10, v8, v9, self->_textRanges];
}

@end