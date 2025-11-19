@interface MBProgressDrive
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6;
- (MBProgressDrive)initWithScript:(id)a3 delegate:(id)a4;
- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MBProgressDrive

- (MBProgressDrive)initWithScript:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MBProgressDrive;
  v9 = [(MBProgressDrive *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_script, a3);
    objc_storeStrong(&v10->_delegate, a4);
  }

  return v10;
}

- (BOOL)createDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  script = self->_script;
  v9 = a4;
  v10 = a3;
  v11 = +[MBDriveOperation operationToCreateDirectory];
  [(MBDriveScript *)script performingOperation:v11];

  LOBYTE(a5) = [(MBDrive *)self->_delegate createDirectoryAtPath:v10 options:v9 error:a5];
  return a5;
}

- (id)contentsOfDirectoryAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  script = self->_script;
  v9 = a4;
  v10 = a3;
  v11 = +[MBDriveOperation operationForContentsOfDirectory];
  [(MBDriveScript *)script performingOperation:v11];

  v12 = [(MBDrive *)self->_delegate contentsOfDirectoryAtPath:v10 options:v9 error:a5];

  return v12;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  script = self->_script;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [MBDriveOperation operationToC0pyItemWithCount:-1 size:-1];
  [(MBDriveScript *)script performingOperation:v14];

  LOBYTE(a6) = [(MBDrive *)self->_delegate copyItemAtPath:v13 toPath:v12 options:v11 error:a6];
  return a6;
}

- (BOOL)uploadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  script = self->_script;
  v11 = a4;
  v12 = a3;
  v13 = +[MBDriveOperation operationToUploadFilesWithCount:size:](MBDriveOperation, "operationToUploadFilesWithCount:size:", [v12 count], -1);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(a6) = [(MBDrive *)self->_delegate uploadFilesAtPaths:v12 options:v11 results:a5 error:a6];
  return a6;
}

- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5
{
  script = self->_script;
  v9 = a5;
  v10 = a4;
  v13 = a3;
  v11 = [v13 paths];
  v12 = +[MBDriveOperation operationToUploadFilesWithCount:size:](MBDriveOperation, "operationToUploadFilesWithCount:size:", [v11 count], -1);
  [(MBDriveScript *)script performingOperation:v12];

  [(MBDrive *)self->_delegate uploadBatch:v13 options:v10 completion:v9];
}

- (BOOL)downloadFilesAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  script = self->_script;
  v11 = a4;
  v12 = a3;
  v13 = +[MBDriveOperation operationToDownloadFilesWithCount:size:](MBDriveOperation, "operationToDownloadFilesWithCount:size:", [v12 count], -1);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(a6) = [(MBDrive *)self->_delegate downloadFilesAtPaths:v12 options:v11 results:a5 error:a6];
  return a6;
}

- (BOOL)moveItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  script = self->_script;
  v11 = a4;
  v12 = a3;
  v13 = +[MBDriveOperation operationToMoveItemsWithCount:](MBDriveOperation, "operationToMoveItemsWithCount:", [v12 count]);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(a6) = [(MBDrive *)self->_delegate moveItemsAtPaths:v12 options:v11 results:a5 error:a6];
  return a6;
}

- (BOOL)removeItemsAtPaths:(id)a3 options:(id)a4 results:(id *)a5 error:(id *)a6
{
  script = self->_script;
  v11 = a4;
  v12 = a3;
  v13 = +[MBDriveOperation operationToRemoveItemsWithCount:](MBDriveOperation, "operationToRemoveItemsWithCount:", [v12 count]);
  [(MBDriveScript *)script performingOperation:v13];

  LOBYTE(a6) = [(MBDrive *)self->_delegate removeItemsAtPaths:v12 options:v11 results:a5 error:a6];
  return a6;
}

@end