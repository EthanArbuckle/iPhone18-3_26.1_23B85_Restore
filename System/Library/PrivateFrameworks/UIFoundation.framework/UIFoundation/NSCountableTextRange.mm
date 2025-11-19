@interface NSCountableTextRange
+ (NSCountableTextRange)documentRange;
+ (void)initialize;
- (BOOL)containsLocation:(id)a3;
- (BOOL)intersectsWithTextRange:(id)a3;
- (BOOL)isEqualToTextRange:(id)a3;
- (NSCountableTextRange)initWithLocation:(id)a3 endLocation:(id)a4;
- (NSCountableTextRange)initWithRange:(_NSRange)a3;
- (_NSRange)range;
- (id)debugDescription;
- (id)textRangeByFormingUnionWithTextRange:(id)a3;
- (id)textRangeByIntersectingWithTextRange:(id)a3;
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
  if (objc_opt_class() == a1)
  {
    __NSCountableTextRangeTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    __NSCountableTextRangeClass = a1;
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

- (NSCountableTextRange)initWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location >= 0x7FFFFFFFFFFFFFFFLL)
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

- (NSCountableTextRange)initWithLocation:(id)a3 endLocation:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    v7 = [a3 type];
    if ([v7 isEqualToString:NSTextLocationTypeCountable])
    {
      if (!a4)
      {
        v10 = [a3 characterIndex];
        goto LABEL_10;
      }

      if (objc_opt_respondsToSelector())
      {
        v8 = [a4 type];
        if ([v8 isEqualToString:NSTextLocationTypeCountable])
        {
          v9 = [a4 characterIndex];
          if (v9 >= [a3 characterIndex])
          {
            v10 = [a3 characterIndex];
            goto LABEL_8;
          }
        }
      }
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"-[%@ initWithLocation:endLocation:] initialized with locations {%@ %@}", objc_opt_class(), a3, a4}];
  v10 = [a3 characterIndex];
  if (a4)
  {
LABEL_8:
    v11 = a4;
    goto LABEL_11;
  }

LABEL_10:
  v11 = a3;
LABEL_11:
  v12 = [v11 characterIndex];
  v13 = v12 - v10;
  if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v12 >= v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return [(NSCountableTextRange *)self initWithRange:v14, v15];
}

- (BOOL)isEqualToTextRange:(id)a3
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [a3 type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    p_range = &self->_range;
    return p_range->location == [a3 range] && p_range->length == v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v10 isEqualToTextRange:a3];
  }
}

- (BOOL)containsLocation:(id)a3
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [a3 type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    v6 = [a3 characterIndex];
    v7 = [(NSCountableTextRange *)self isEndingAtEOD];
    location = self->_range.location;
    if (v7)
    {
      return v6 >= location;
    }

    else
    {
      v11 = v6 >= location;
      v10 = v6 - location;
      v11 = !v11 || v10 >= self->_range.length;
      return !v11;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v12 containsLocation:a3];
  }
}

- (BOOL)intersectsWithTextRange:(id)a3
{
  if ((__NSBaseClassDebugging & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = [a3 type], objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    if ([(NSCountableTextRange *)self isEndingAtEOD])
    {
      if ([a3 isEndingAtEOD])
      {
        return 1;
      }

      else
      {
        v8 = [a3 range];
        return v8 + v9 > self->_range.location;
      }
    }

    else
    {
      v11.location = [a3 range];
      v11.length = v7;
      return NSIntersectionRange(self[24], v11).length != 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v10 intersectsWithTextRange:a3];
  }
}

- (id)textRangeByIntersectingWithTextRange:(id)a3
{
  if ((__NSBaseClassDebugging & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || (v5 = [a3 type], !objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    v21.receiver = self;
    v21.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v21 textRangeByIntersectingWithTextRange:a3];
  }

  v6 = [a3 range];
  v8 = v7;
  if ([(NSCountableTextRange *)self isEndingAtEOD])
  {
    v9 = [a3 isEndingAtEOD];
    location = self->_range.location;
    if (v9)
    {
      if (location <= v6)
      {
        v11 = a3;
      }

      else
      {
        v11 = self;
      }

      v12 = v11;
      goto LABEL_36;
    }

    if (location <= v6)
    {
      goto LABEL_35;
    }

    length = v6 + v8 - location;
  }

  else
  {
    v23.location = v6;
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
        if ([a3 range] != location || v17 != length)
        {
          goto LABEL_31;
        }

LABEL_35:
        v12 = a3;
        goto LABEL_36;
      }

LABEL_32:
      v12 = self;
      goto LABEL_36;
    }

    return 0;
  }

  if (self->_range.location == location && self->_range.length == length)
  {
    goto LABEL_32;
  }

  if ([a3 range] == location && v19 == length)
  {
    goto LABEL_35;
  }

  if (!length)
  {
    return 0;
  }

LABEL_31:
  v12 = [objc_alloc(objc_opt_class()) initWithRange:{location, length}];
LABEL_36:

  return v12;
}

- (id)textRangeByFormingUnionWithTextRange:(id)a3
{
  if ((__NSBaseClassDebugging & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0 || (v5 = [a3 type], !objc_msgSend(v5, "isEqualToString:", NSTextLocationTypeCountable)))
  {
    v18.receiver = self;
    v18.super_class = NSCountableTextRange;
    return [(NSTextRange *)&v18 textRangeByFormingUnionWithTextRange:a3];
  }

  location = [a3 range];
  if (![(NSCountableTextRange *)self isEndingAtEOD])
  {
    v20.location = [a3 range];
    v20.length = v12;
    v13 = NSUnionRange(self->_range, v20);
    location = v13.location;
    length = v13.length;
    v8 = self->_range.location;
    goto LABEL_12;
  }

  v7 = [a3 isEndingAtEOD];
  v8 = self->_range.location;
  if (v7)
  {
    if (v8 >= location)
    {
      v9 = a3;
    }

    else
    {
      v9 = self;
    }

    v10 = v9;
    goto LABEL_25;
  }

  if (v8 > location)
  {
    length = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
    if (v8 != location || self->_range.length != length)
    {
      if ([a3 range] == location && v16 == length)
      {
        v10 = a3;
      }

      else
      {
        v10 = [objc_alloc(objc_opt_class()) initWithRange:{location, length}];
      }

      goto LABEL_25;
    }
  }

  v10 = self;
LABEL_25:

  return v10;
}

@end