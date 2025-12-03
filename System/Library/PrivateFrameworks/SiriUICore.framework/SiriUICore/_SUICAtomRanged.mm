@interface _SUICAtomRanged
+ (id)atomWithEditRange:(_NSRange)range replacementText:(id)text;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEditScriptAtomRanged:(id)ranged;
- (_NSRange)editRange;
- (_SUICAtomRanged)initWithEditRange:(_NSRange)range replacementText:(id)text;
- (id)description;
@end

@implementation _SUICAtomRanged

- (_SUICAtomRanged)initWithEditRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v11.receiver = self;
  v11.super_class = _SUICAtomRanged;
  v8 = [(_SUICAtomRanged *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_SUICAtomRanged *)v8 setEditRange:location, length];
    [(_SUICAtomRanged *)v9 setReplacementText:textCopy];
  }

  return v9;
}

- (id)description
{
  p_isa = self->_replacementText;
  if ([(NSString *)self->_replacementText length])
  {
    if (![(NSString *)self->_replacementText isEqualToString:@" "])
    {
      goto LABEL_6;
    }

    v4 = @"[space]";
  }

  else
  {
    v4 = @"[blank]";
  }

  p_isa = &v4->isa;
LABEL_6:
  p_isa = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu, %lu):%@\n", self->_editRange.location, self->_editRange.length, p_isa];

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_SUICAtomRanged *)self isEqualToEditScriptAtomRanged:v5];
  }

  return v6;
}

- (BOOL)isEqualToEditScriptAtomRanged:(id)ranged
{
  rangedCopy = ranged;
  v5 = rangedCopy;
  if (self == rangedCopy)
  {
    v14 = 1;
  }

  else if (rangedCopy && (v6 = [(_SUICAtomRanged *)self editRange], v6 == [(_SUICAtomRanged *)v5 editRange]) && ([(_SUICAtomRanged *)self editRange], v8 = v7, [(_SUICAtomRanged *)v5 editRange], v8 == v9))
  {
    replacementText = [(_SUICAtomRanged *)self replacementText];
    replacementText2 = [(_SUICAtomRanged *)v5 replacementText];
    if (replacementText == replacementText2)
    {
      v14 = 1;
    }

    else
    {
      replacementText3 = [(_SUICAtomRanged *)self replacementText];
      replacementText4 = [(_SUICAtomRanged *)v5 replacementText];
      v14 = [replacementText3 isEqualToString:replacementText4];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

+ (id)atomWithEditRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  textCopy = [[_SUICAtomRanged alloc] initWithEditRange:location replacementText:length, textCopy];

  return textCopy;
}

- (_NSRange)editRange
{
  length = self->_editRange.length;
  location = self->_editRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end