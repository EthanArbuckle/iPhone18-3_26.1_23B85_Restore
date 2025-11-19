@interface _PASArgOption
- (_PASArgOption)initWithName:(id)a3 shortName:(id)a4 argMetavar:(id)a5 help:(id)a6 required:(BOOL)a7;
@end

@implementation _PASArgOption

- (_PASArgOption)initWithName:(id)a3 shortName:(id)a4 argMetavar:(id)a5 help:(id)a6 required:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v13 length])
  {
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];

    if (!v14)
    {
      goto LABEL_5;
    }
  }

  if ([v14 length] != 1)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"!shortName || shortName.length == 1"}];
  }

LABEL_5:
  if (!v16)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"helpDescription"}];
  }

  v24.receiver = self;
  v24.super_class = _PASArgOption;
  v17 = [(_PASArgOption *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, a3);
    objc_storeStrong(&v18->_shortName, a4);
    objc_storeStrong(&v18->_argMetavar, a5);
    objc_storeStrong(&v18->_helpDescription, a6);
    v18->_required = a7;
  }

  return v18;
}

@end