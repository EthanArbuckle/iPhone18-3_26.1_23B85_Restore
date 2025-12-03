@interface NSCountableTextLocation
+ (NSCountableTextLocation)endOfDocumentLocation;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextLocation:(id)location;
- (NSCountableTextLocation)initWithIndex:(unint64_t)index;
- (NSString)debugDescription;
- (int64_t)compare:(id)compare;
@end

@implementation NSCountableTextLocation

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __NSCountableTextLocationTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    __NSCountableTextLocationClass = self;
  }
}

+ (NSCountableTextLocation)endOfDocumentLocation
{
  if (endOfDocumentLocation_onceToken != -1)
  {
    +[NSCountableTextLocation endOfDocumentLocation];
  }

  return endOfDocumentLocation_textLocation;
}

NSCountableTextLocation *__48__NSCountableTextLocation_endOfDocumentLocation__block_invoke()
{
  result = [[NSCountableTextLocation alloc] initWithIndex:0x7FFFFFFFFFFFFFFFLL];
  endOfDocumentLocation_textLocation = result;
  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(NSCountableTextLocation *)self isEndOfDocument])
  {
    v4 = @"%@: <EOD>";
  }

  else
  {
    v4 = @"%@: %lu";
  }

  return [v3 stringWithFormat:v4, objc_opt_class(), -[NSCountableTextLocation characterIndex](self, "characterIndex")];
}

- (NSCountableTextLocation)initWithIndex:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = NSCountableTextLocation;
  v4 = [(NSCountableTextLocation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_characterIndex = index;
    if (objc_opt_class() == __NSCountableTextLocationClass)
    {
      v6 = __NSCountableTextLocationTable;
      objc_sync_enter(__NSCountableTextLocationTable);
      v7 = [__NSCountableTextLocationTable member:v5];
      if (v7)
      {

        v5 = v7;
      }

      else
      {
        if ([__NSCountableTextLocationTable count] >> 4 >= 0x271)
        {
          [__NSCountableTextLocationTable removeAllObjects];
        }

        [__NSCountableTextLocationTable addObject:v5];
      }

      objc_sync_exit(v6);
    }
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  if (self == compare)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    characterIndex = *(compare + 1);
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = objc_opt_class();
      [v12 raise:v13 format:{@"-[%@ %@] receiving unmatching type %@", v14, NSStringFromSelector(a2), compare}];
      return 0;
    }

    characterIndex = [compare characterIndex];
  }

  characterIndex = self->_characterIndex;
  v9 = characterIndex == characterIndex;
  v10 = characterIndex < characterIndex;
  v11 = -1;
  if (!v10)
  {
    v11 = 1;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

- (BOOL)isEqualToTextLocation:(id)location
{
  if (self == location)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return self->_characterIndex == *(location + 1);
  }

  else
  {
    return [(NSCountableTextLocation *)self compare:location]== 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = self->_characterIndex == *(equal + 1);
    }

    else
    {
      v6 = [equal conformsToProtocol:&unk_1F01D5920];
      if (!v6)
      {
        return v6;
      }

      v5 = [(NSCountableTextLocation *)self compare:equal]== 0;
    }

    LOBYTE(v6) = v5;
  }

  return v6;
}

@end