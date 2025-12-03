@interface MBManifestDBDownloadHelper
- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error;
@end

@implementation MBManifestDBDownloadHelper

- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error
{
  properties = self->_properties;
  keybag = self->_keybag;
  pathCopy = path;
  manifestEncryptionKey = [(MBProperties *)properties manifestEncryptionKey];
  v11 = [MBEncryptedFileHandle encryptedFileHandleForRestoreWithPath:pathCopy keybag:keybag key:manifestEncryptionKey error:error];

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