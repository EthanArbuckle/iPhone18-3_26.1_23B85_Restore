@interface MBManifestDBDownloadHelper
- (id)fileHandleWithPath:(id)a3 flags:(int)a4 mode:(unsigned __int16)a5 error:(id *)a6;
@end

@implementation MBManifestDBDownloadHelper

- (id)fileHandleWithPath:(id)a3 flags:(int)a4 mode:(unsigned __int16)a5 error:(id *)a6
{
  properties = self->_properties;
  keybag = self->_keybag;
  v9 = a3;
  v10 = [(MBProperties *)properties manifestEncryptionKey];
  v11 = [MBEncryptedFileHandle encryptedFileHandleForRestoreWithPath:v9 keybag:keybag key:v10 error:a6];

  if (v11)
  {
    v12 = [[MBRestoreFileHandle alloc] initWithEngine:0 fileHandle:v11 file:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end