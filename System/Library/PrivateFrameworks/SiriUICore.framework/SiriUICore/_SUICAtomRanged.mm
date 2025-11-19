@interface _SUICAtomRanged
+ (id)atomWithEditRange:(_NSRange)a3 replacementText:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEditScriptAtomRanged:(id)a3;
- (_NSRange)editRange;
- (_SUICAtomRanged)initWithEditRange:(_NSRange)a3 replacementText:(id)a4;
- (id)description;
@end

@implementation _SUICAtomRanged

- (_SUICAtomRanged)initWithEditRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _SUICAtomRanged;
  v8 = [(_SUICAtomRanged *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_SUICAtomRanged *)v8 setEditRange:location, length];
    [(_SUICAtomRanged *)v9 setReplacementText:v7];
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
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%lu, %lu):%@\n", self->_editRange.location, self->_editRange.length, p_isa];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_SUICAtomRanged *)self isEqualToEditScriptAtomRanged:v5];
  }

  return v6;
}

- (BOOL)isEqualToEditScriptAtomRanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v14 = 1;
  }

  else if (v4 && (v6 = [(_SUICAtomRanged *)self editRange], v6 == [(_SUICAtomRanged *)v5 editRange]) && ([(_SUICAtomRanged *)self editRange], v8 = v7, [(_SUICAtomRanged *)v5 editRange], v8 == v9))
  {
    v10 = [(_SUICAtomRanged *)self replacementText];
    v11 = [(_SUICAtomRanged *)v5 replacementText];
    if (v10 == v11)
    {
      v14 = 1;
    }

    else
    {
      v12 = [(_SUICAtomRanged *)self replacementText];
      v13 = [(_SUICAtomRanged *)v5 replacementText];
      v14 = [v12 isEqualToString:v13];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

+ (id)atomWithEditRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [[_SUICAtomRanged alloc] initWithEditRange:location replacementText:length, v6];

  return v7;
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