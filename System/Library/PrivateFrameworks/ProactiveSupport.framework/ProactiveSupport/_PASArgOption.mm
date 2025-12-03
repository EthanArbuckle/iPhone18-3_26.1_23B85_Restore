@interface _PASArgOption
- (_PASArgOption)initWithName:(id)name shortName:(id)shortName argMetavar:(id)metavar help:(id)help required:(BOOL)required;
@end

@implementation _PASArgOption

- (_PASArgOption)initWithName:(id)name shortName:(id)shortName argMetavar:(id)metavar help:(id)help required:(BOOL)required
{
  nameCopy = name;
  shortNameCopy = shortName;
  metavarCopy = metavar;
  helpCopy = help;
  if ([nameCopy length])
  {
    if (!shortNameCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];

    if (!shortNameCopy)
    {
      goto LABEL_5;
    }
  }

  if ([shortNameCopy length] != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"!shortName || shortName.length == 1"}];
  }

LABEL_5:
  if (!helpCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_PASArgParser.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"helpDescription"}];
  }

  v24.receiver = self;
  v24.super_class = _PASArgOption;
  v17 = [(_PASArgOption *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v18->_shortName, shortName);
    objc_storeStrong(&v18->_argMetavar, metavar);
    objc_storeStrong(&v18->_helpDescription, help);
    v18->_required = required;
  }

  return v18;
}

@end