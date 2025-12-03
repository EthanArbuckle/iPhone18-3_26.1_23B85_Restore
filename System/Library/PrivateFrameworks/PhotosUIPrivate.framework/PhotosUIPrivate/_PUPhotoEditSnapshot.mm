@interface _PUPhotoEditSnapshot
- (id)_copyData:(id)data;
- (void)setBaseImageData:(id)data;
- (void)setImageData:(id)data;
@end

@implementation _PUPhotoEditSnapshot

- (id)_copyData:(id)data
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  v6 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 stringByAppendingPathComponent:uUIDString];

  [dataCopy writeToFile:v9 options:1073741825 error:0];
  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9 options:8 error:0];
  unlink([v9 fileSystemRepresentation]);
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11301 description:@"couldn't copy snapshot data"];
  }

  return v10;
}

- (void)setBaseImageData:(id)data
{
  v4 = [(_PUPhotoEditSnapshot *)self _copyData:data];
  baseImageData = self->_baseImageData;
  self->_baseImageData = v4;

  MEMORY[0x1EEE66BB8](v4, baseImageData);
}

- (void)setImageData:(id)data
{
  v4 = [(_PUPhotoEditSnapshot *)self _copyData:data];
  imageData = self->_imageData;
  self->_imageData = v4;

  MEMORY[0x1EEE66BB8](v4, imageData);
}

@end