@interface _PLPhotoLibraryFileReservation
- (_PLPhotoLibraryFileReservation)initWithFileDescriptor:(int)a3;
- (void)dealloc;
@end

@implementation _PLPhotoLibraryFileReservation

- (void)dealloc
{
  v3 = [(_PLPhotoLibraryFileReservation *)self fileDescriptor];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    flock(v3, 8);
    close(v4);
    [(_PLPhotoLibraryFileReservation *)self setFileDescriptor:0xFFFFFFFFLL];
  }

  v5.receiver = self;
  v5.super_class = _PLPhotoLibraryFileReservation;
  [(_PLPhotoLibraryFileReservation *)&v5 dealloc];
}

- (_PLPhotoLibraryFileReservation)initWithFileDescriptor:(int)a3
{
  v3 = *&a3;
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