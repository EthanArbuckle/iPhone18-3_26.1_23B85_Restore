@interface _EditScriptIndexedAtom
+ (_EditScriptIndexedAtom)atomWithEditOperation:(int64_t)operation indexToEdit:(unint64_t)edit newText:(id)text indexInArrayB:(unint64_t)b;
- (_EditScriptIndexedAtom)initWithEditOperation:(int64_t)operation indexToEdit:(unint64_t)edit newText:(id)text indexInArrayB:(unint64_t)b;
- (id)description;
@end

@implementation _EditScriptIndexedAtom

- (_EditScriptIndexedAtom)initWithEditOperation:(int64_t)operation indexToEdit:(unint64_t)edit newText:(id)text indexInArrayB:(unint64_t)b
{
  textCopy = text;
  v14.receiver = self;
  v14.super_class = _EditScriptIndexedAtom;
  v11 = [(_EditScriptIndexedAtom *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_EditScriptIndexedAtom *)v11 setEditOperation:operation];
    [(_EditScriptIndexedAtom *)v12 setIndexToEdit:edit];
    [(_EditScriptIndexedAtom *)v12 setIndexInArrayB:b];
    [(_EditScriptIndexedAtom *)v12 setReplacementText:textCopy];
  }

  return v12;
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
  v5 = self->_editOperation - 1;
  if (v5 > 2)
  {
    v6 = @"NO-OP";
  }

  else
  {
    v6 = *(&off_1E7115AC8 + v5);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_indexToEdit];
  v8 = v7;
  if (self->_indexInArrayB == 0x7FFFFFFFFFFFFFFFLL)
  {

    v8 = @"N/A";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"editOpertaion:%@, editIndex:%lu newText:%@ indexInArrayB:%@\n", v6, self->_indexToEdit, p_isa, v8];

  return v9;
}

+ (_EditScriptIndexedAtom)atomWithEditOperation:(int64_t)operation indexToEdit:(unint64_t)edit newText:(id)text indexInArrayB:(unint64_t)b
{
  textCopy = text;
  v10 = [[_EditScriptIndexedAtom alloc] initWithEditOperation:operation indexToEdit:edit newText:textCopy indexInArrayB:b];

  return v10;
}

@end