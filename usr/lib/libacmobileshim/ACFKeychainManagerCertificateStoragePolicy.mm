@interface ACFKeychainManagerCertificateStoragePolicy
- (BOOL)removeCertificateWithLabel:(id)label realm:(id)realm;
- (BOOL)storeCertificate:(__SecCertificate *)certificate realm:(id)realm;
- (__SecCertificate)certificateWithLabel:(id)label realm:(id)realm;
- (id)keychainManager;
@end

@implementation ACFKeychainManagerCertificateStoragePolicy

- (id)keychainManager
{
  v2 = +[ACFComponents components];

  return [v2 keychainManager];
}

- (BOOL)removeCertificateWithLabel:(id)label realm:(id)realm
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:label];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setLabel:label];
  keychainManager = [(ACFKeychainManagerCertificateStoragePolicy *)self keychainManager];

  return [keychainManager removeItemWithInfo:v6];
}

- (BOOL)storeCertificate:(__SecCertificate *)certificate realm:(id)realm
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:certificate];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setValueRef:certificate];
  if (qword_2A1EB8EF8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    attributes = [v6 attributes];
    ACFLogNS(7, "[ACFKeychainManagerCertificateStoragePolicy storeCertificate:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManagerCertificateStoragePolicy.m", 35, 0, @"Storing public key certificate with info = %@", v8, v9, attributes);
  }

  return [-[ACFKeychainManagerCertificateStoragePolicy keychainManager](self "keychainManager")] == 0;
}

- (__SecCertificate)certificateWithLabel:(id)label realm:(id)realm
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:label];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setLabel:label];
  result = [objc_msgSend(v6 "label")];
  if (result)
  {
    [v6 setReturnRef:1];
    v8 = [-[ACFKeychainManagerCertificateStoragePolicy keychainManager](self "keychainManager")];

    return [v8 valueRef];
  }

  return result;
}

@end