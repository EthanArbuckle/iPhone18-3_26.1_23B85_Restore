@interface ICAuthServiceClientTokenProviderDebugConfiguration
- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCoder:(id)coder;
- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCommandOption:(unint64_t)option allDSIDsShouldError:(BOOL)error allDSIDsShouldSucceed:(BOOL)succeed errorDSIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICAuthServiceClientTokenProviderDebugConfiguration

- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ICAuthServiceClientTokenProviderDebugConfiguration;
  v5 = [(ICAuthServiceClientTokenProviderDebugConfiguration *)&v12 init];
  if (v5)
  {
    v5->_commandOption = [coderCopy decodeIntegerForKey:@"CommandOption"];
    v5->_allDSIDsShouldError = [coderCopy decodeBoolForKey:@"AllDSIDsShouldError"];
    v5->_allDSIDsShouldSucceed = [coderCopy decodeBoolForKey:@"AllDSIDsShouldSucceed"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ErrorDSIDs"];
    errorDSIDs = v5->_errorDSIDs;
    v5->_errorDSIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  commandOption = self->_commandOption;
  coderCopy = coder;
  [coderCopy encodeInteger:commandOption forKey:@"CommandOption"];
  [coderCopy encodeBool:self->_allDSIDsShouldError forKey:@"AllDSIDsShouldError"];
  [coderCopy encodeBool:self->_allDSIDsShouldSucceed forKey:@"AllDSIDsShouldSucceed"];
  [coderCopy encodeObject:self->_errorDSIDs forKey:@"ErrorDSIDs"];
}

- (ICAuthServiceClientTokenProviderDebugConfiguration)initWithCommandOption:(unint64_t)option allDSIDsShouldError:(BOOL)error allDSIDsShouldSucceed:(BOOL)succeed errorDSIDs:(id)ds
{
  dsCopy = ds;
  v15.receiver = self;
  v15.super_class = ICAuthServiceClientTokenProviderDebugConfiguration;
  v12 = [(ICAuthServiceClientTokenProviderDebugConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_commandOption = option;
    v12->_allDSIDsShouldError = error;
    v12->_allDSIDsShouldSucceed = succeed;
    objc_storeStrong(&v12->_errorDSIDs, ds);
  }

  return v13;
}

@end