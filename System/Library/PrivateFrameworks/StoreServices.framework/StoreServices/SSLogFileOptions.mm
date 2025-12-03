@interface SSLogFileOptions
- (SSLogFileOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation SSLogFileOptions

- (SSLogFileOptions)init
{
  v3.receiver = self;
  v3.super_class = SSLogFileOptions;
  result = [(SSLogFileOptions *)&v3 init];
  if (result)
  {
    *&result->_maxNumberOfLogFiles = xmmword_1D4B38E30;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLogFileOptions;
  [(SSLogFileOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSString *)self->_directoryPath copyWithZone:zone];
  v5[2] = [(NSString *)self->_fileName copyWithZone:zone];
  v5[3] = self->_maxNumberOfLogFiles;
  v5[4] = self->_maxSizeInBytes;
  return v5;
}

@end