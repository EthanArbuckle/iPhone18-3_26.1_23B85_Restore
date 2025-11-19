@interface _PUPhotoEditSnapshot
- (id)_copyData:(id)a3;
- (void)setBaseImageData:(id)a3;
- (void)setImageData:(id)a3;
@end

@implementation _PUPhotoEditSnapshot

- (id)_copyData:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = NSTemporaryDirectory();
  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 stringByAppendingPathComponent:v8];

  [v5 writeToFile:v9 options:1073741825 error:0];
  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v9 options:8 error:0];
  unlink([v9 fileSystemRepresentation]);
  if (!v10)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUPhotoEditViewController.m" lineNumber:11301 description:@"couldn't copy snapshot data"];
  }

  return v10;
}

- (void)setBaseImageData:(id)a3
{
  v4 = [(_PUPhotoEditSnapshot *)self _copyData:a3];
  baseImageData = self->_baseImageData;
  self->_baseImageData = v4;

  MEMORY[0x1EEE66BB8](v4, baseImageData);
}

- (void)setImageData:(id)a3
{
  v4 = [(_PUPhotoEditSnapshot *)self _copyData:a3];
  imageData = self->_imageData;
  self->_imageData = v4;

  MEMORY[0x1EEE66BB8](v4, imageData);
}

@end