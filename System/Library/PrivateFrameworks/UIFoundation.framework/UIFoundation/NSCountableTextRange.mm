@interface NSCountableTextRange
+ (NSCountableTextRange)documentRange;
+ (void)initialize;
- (BOOL)containsLocation:(id)location;
- (BOOL)intersectsWithTextRange:(id)range;
- (BOOL)isEqualToTextRange:(id)range;
- (NSCountableTextRange)initWithLocation:(id)location endLocation:(id)endLocation;
- (NSCountableTextRange)initWithRange:(_NSRange)range;
- (_NSRange)range;
- (id)debugDescription;
- (id)textRangeByFormingUnionWithTextRange:(id)range;
- (id)textRangeByIntersectingWithTextRange:(id)range;
@end

@implementation NSCountableTextRange

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __NSCountableTextRangeTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    __NSCountableTextRangeClass = self;
  }
}

+ (NSCountableTextRange)documentRange
{
  if (documentRange_onceToken != -1)
  {
    +[NSCountableTextRange documentRange];
  }

  return documentRange_textRange;
}

NSCountableTextRange *__37__NSCountableTextRange_documentRange__block_invoke()
{
  result = [[NSCountableTextRange alloc] initWithRange:0, 0x7FFFFFFFFFFFFFFFLL];
  documentRange_textRange = result;
  return result;
}

- (id)debugDescription
{
  length = self->_range.length;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6.location = [(NSCountableTextRange *)self range];
  if (length > 0x7FFFFFFFFFFFFFFELL)
  {
    return [v4 stringWithFormat:@"%@: {%lu, <EOD>}", v5, v6.location];
  }

  else
  {
    return [v4 stringWithFormat:@"%@: %@", v5, NSStringFromRange(v6)];
  }
}

- (NSCountableTextRange)initWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v18.location = location;
    v18.length = length;
    [v6 raise:v7 format:{@"-[%@ initWithRange:] initialized with invalid range %@", v8, NSStringFromRange(v18)}];
  }

  v9 = [[NSCountableTextLocation alloc] initWithIndex:location];
  if (length)
  {
    if (length < 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [[NSCountableTextLocation alloc] initWithIndex:location + length];
    }

    else
    {
      v10 = +[NSCountableTextLocation endOfDocumentLocation];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = NSCountableTextRange;
  v12 = [(NSTextRange *)&v17 initWithLocation:v9 endLocation:v11];
  v13 = v12;
  if (v12)
  {
    v12->_range.location = location;
    v12->_range.length = length;
    if (objc_opt_class() == __NSCountableTextRangeClass)
    {
      v14 = __NSCountableTextRangeTable;
      objc_sync_enter(__NSCountableTextRangeTable);
      v15 = [__NSCountableTextRangeTable member:v13];
      if (v15)
      {

        v13 = v15;
      }

      else
      {
        if ([__NSCountableTextRangeTable count] >> 3 >= 0x271)
        {
          [__NSCountableTextRangeTable removeAllObjects];
        }

        [__NSCountableTextRangeTable addObject:v13];
      }

      objc_sync_exit(v14);
    }
  }

  return v13;
}

- (NSCountableTextRange)initWithLocation:(id)location endLocation:(id)endLocation
{
  if (objc_opt_respondsToSelector())
  {
    type = [location type];
    if ([type isEqualToString:NSTextLocationTypeCountable])
    {
      if (!endLocation)
      {
        characterIndex = [location characterIndex];
        goto LABEL_10;
      }

      if (objc_opt_respondsToSelector())
      {
        type2 = [endLocation type];
        if ([type2 isEqualToString:NSTextLocationTypeCountable])
        {
          characterIndex2 = [endLocation characterIndex];
          if (characterIndex2 >= [location characterIndex])
          {
            characterIndex = [location characterIndex];
            goto LABEL_8;
          }
        }
      }
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-[%@ initWithLocation:endLocation:] initialized with locations {%@ %@}", objc_opt_class(), location, endLocation}];
  characterIndex = [location characterIndex];
  if (endLocation)
  {
LABEL_8:
    locationCopy = endLocation;
    goto LABEL_11;
  }

LABEL_10:
  locationCopy = location;
LABEL_11:
  characterIndex3 = [locationCopy characterIndex];
  v13 = characterIndex3 - characterIndex;
  if (characterIndex3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (characterIndex3 >= characterIndex)
  {
    v14 = characterIndex;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (characterIndex3 >= characterIndex)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return [(NSCountableTextRange *)self initWithRange:v14, v15];
}

- (BOOL)isEqualToTextRange:(id)range
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [range type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    p_range = &self->_range;
    return p_range->location == [range range] && p_range->length == v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v10 isEqualToTextRange:range];
  }
}

- (BOOL)containsLocation:(id)location
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [location type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    characterIndex = [location characterIndex];
    isEndingAtEOD = [(NSCountableTextRange *)self isEndingAtEOD];
    location = self->_range.location;
    if (isEndingAtEOD)
    {
      return characterIndex >= location;
    }

    else
    {
      v11 = characterIndex >= location;
      v10 = characterIndex - location;
      v11 = !v11 || v10 >= self->_range.length;
      return !v11;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v12 containsLocation:location];
  }
}

- (BOOL)intersectsWithTextRange:(id)range
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [range type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    if ([(NSCountableTextRange *)self isEndingAtEOD])
    {
      if ([range isEndingAtEOD])
      {
        return 1;
      }

      else
      {
        range = [range range];
        return range + v9 > self->_range.location;
      }
    }

    else
    {
      v11.location = [range range];
      v11.length = v7;
      return NSIntersectionRange(self[24], v11).length != 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v10 intersectsWithTextRange:range];
  }
}

- (id)textRangeByIntersectingWithTextRange:(id)range
{
  if ((__NSBaseClassDebugging & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || (v5 = [range type], !objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    v21.receiver = self;
    v21.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v21 textRangeByIntersectingWithTextRange:range];
  }

  range = [range range];
  v8 = v7;
  if ([(NSCountableTextRange *)self isEndingAtEOD])
  {
    isEndingAtEOD = [range isEndingAtEOD];
    location = self->_range.location;
    if (isEndingAtEOD)
    {
      if (location <= range)
      {
        selfCopy = range;
      }

      else
      {
        selfCopy = self;
      }

      selfCopy2 = selfCopy;
      goto LABEL_36;
    }

    if (location <= range)
    {
      goto LABEL_35;
    }

    length = range + v8 - location;
  }

  else
  {
    v23.location = range;
    v23.length = v8;
    v14 = NSIntersectionRange(self->_range, v23);
    location = v14.location;
    length = v14.length;
  }

  if (dyld_program_sdk_at_least())
  {
    if (length)
    {
      if (self->_range.location != location || self->_range.length != length)
      {
        if ([range range] != location || v17 != length)
        {
          goto LABEL_31;
        }

LABEL_35:
        selfCopy2 = range;
        goto LABEL_36;
      }

LABEL_32:
      selfCopy2 = self;
      goto LABEL_36;
    }

    return 0;
  }

  if (self->_range.location == location && self->_range.length == length)
  {
    goto LABEL_32;
  }

  if ([range range] == location && v19 == length)
  {
    goto LABEL_35;
  }

  if (!length)
  {
    return 0;
  }

LABEL_31:
  selfCopy2 = [objc_alloc(objc_opt_class()) initWithRange:{location, length}];
LABEL_36:

  return selfCopy2;
}

- (id)textRangeByFormingUnionWithTextRange:(id)range
{
  if ((__NSBaseClassDebugging & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || (v5 = [range type], !objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    v18.receiver = self;
    v18.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v18 textRangeByFormingUnionWithTextRange:range];
  }

  location = [range range];
  if (![(NSCountableTextRange *)self isEndingAtEOD])
  {
    v20.location = [range range];
    v20.length = v12;
    v13 = NSUnionRange(self->_range, v20);
    location = v13.location;
    length = v13.length;
    v8 = self->_range.location;
    goto LABEL_12;
  }

  isEndingAtEOD = [range isEndingAtEOD];
  v8 = self->_range.location;
  if (isEndingAtEOD)
  {
    if (v8 >= location)
    {
      selfCopy = range;
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
    goto LABEL_25;
  }

  if (v8 > location)
  {
    length = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
    if (v8 != location || self->_range.length != length)
    {
      if ([range range] == location && v16 == length)
      {
        selfCopy2 = range;
      }

      else
      {
        selfCopy2 = [objc_alloc(objc_opt_class()) initWithRange:{location, length}];
      }

      goto LABEL_25;
    }
  }

  selfCopy2 = self;
LABEL_25:

  return selfCopy2;
}

@end