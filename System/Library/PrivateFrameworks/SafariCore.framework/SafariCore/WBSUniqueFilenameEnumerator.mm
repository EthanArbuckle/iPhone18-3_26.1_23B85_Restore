@interface WBSUniqueFilenameEnumerator
- (WBSUniqueFilenameEnumerator)initWithFilename:(id)filename;
- (id)nextObject;
- (unint64_t)fileNumber;
@end

@implementation WBSUniqueFilenameEnumerator

- (WBSUniqueFilenameEnumerator)initWithFilename:(id)filename
{
  filenameCopy = filename;
  v14.receiver = self;
  v14.super_class = WBSUniqueFilenameEnumerator;
  v5 = [(WBSUniqueFilenameEnumerator *)&v14 init];
  if (v5)
  {
    v6 = [filenameCopy copy];
    filename = v5->_filename;
    v5->_filename = v6;

    stringByDeletingPathExtension = [(NSString *)v5->_filename stringByDeletingPathExtension];
    filenameWithoutExtension = v5->_filenameWithoutExtension;
    v5->_filenameWithoutExtension = stringByDeletingPathExtension;

    v10 = [(NSString *)v5->_filename substringFromIndex:[(NSString *)v5->_filenameWithoutExtension length]];
    pathExtension = v5->_pathExtension;
    v5->_pathExtension = v10;

    v12 = v5;
  }

  return v5;
}

- (id)nextObject
{
  iteration = self->_iteration;
  if (iteration <= 0x7FFFFFFE)
  {
    if (iteration)
    {
      v4 = iteration + 1;
      self->_iteration = v4;
      filenameWithoutExtension = self->_filenameWithoutExtension;
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%zu%@", v4, self->_pathExtension];
      v3 = [(NSString *)filenameWithoutExtension safari_stringByTruncatingToMaximumFilenameLengthPreservingExtensionAndAppendingString:v6];
    }

    else
    {
      self->_iteration = 1;
      v3 = [(NSString *)self->_filenameWithoutExtension safari_stringByTruncatingToMaximumFilenameLengthPreservingExtensionAndAppendingString:self->_pathExtension];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)fileNumber
{
  if (self->_iteration >= 2)
  {
    return self->_iteration;
  }

  else
  {
    return 0;
  }
}

@end