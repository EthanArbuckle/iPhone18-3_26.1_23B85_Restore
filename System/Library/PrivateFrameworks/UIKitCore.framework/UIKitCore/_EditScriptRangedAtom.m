@interface _EditScriptRangedAtom
+ (_EditScriptRangedAtom)atomWithEditRange:(_NSRange)a3 replacementText:(id)a4;
- (_EditScriptRangedAtom)initWithEditRange:(_NSRange)a3 replacementText:(id)a4;
- (_NSRange)editRange;
- (id)description;
@end

@implementation _EditScriptRangedAtom

- (_EditScriptRangedAtom)initWithEditRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _EditScriptRangedAtom;
  v8 = [(_EditScriptRangedAtom *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_EditScriptRangedAtom *)v8 setEditRange:location, length];
    [(_EditScriptRangedAtom *)v9 setReplacementText:v7];
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

+ (_EditScriptRangedAtom)atomWithEditRange:(_NSRange)a3 replacementText:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [[_EditScriptRangedAtom alloc] initWithEditRange:location replacementText:length, v6];

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