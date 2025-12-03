@interface _PLPhotoLibraryFileReservation
- (_PLPhotoLibraryFileReservation)initWithFileDescriptor:(int)descriptor;
- (void)dealloc;
@end

@implementation _PLPhotoLibraryFileReservation

- (void)dealloc
{
  fileDescriptor = [(_PLPhotoLibraryFileReservation *)self fileDescriptor];
  if ((fileDescriptor & 0x80000000) == 0)
  {
    v4 = fileDescriptor;
    flock(fileDescriptor, 8);
    close(v4);
    [(_PLPhotoLibraryFileReservation *)self setFileDescriptor:0xFFFFFFFFLL];
  }

  v5.receiver = self;
  v5.super_class = _PLPhotoLibraryFileReservation;
  [(_PLPhotoLibraryFileReservation *)&v5 dealloc];
}

- (_PLPhotoLibraryFileReservation)initWithFileDescriptor:(int)descriptor
{
  v3 = *&descriptor;
  v7.receiver = self;
  v7.super_class = _PLPhotoLibraryFileReservation;
  v4 = [(_PLPhotoLibraryFileReservation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_PLPhotoLibraryFileReservation *)v4 setFileDescriptor:v3];
  }

  return v5;
}

@end