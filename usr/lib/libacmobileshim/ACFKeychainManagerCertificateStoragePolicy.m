@interface ACFKeychainManagerCertificateStoragePolicy
- (BOOL)removeCertificateWithLabel:(id)a3 realm:(id)a4;
- (BOOL)storeCertificate:(__SecCertificate *)a3 realm:(id)a4;
- (__SecCertificate)certificateWithLabel:(id)a3 realm:(id)a4;
- (id)keychainManager;
@end

@implementation ACFKeychainManagerCertificateStoragePolicy

- (id)keychainManager
{
  v2 = +[ACFComponents components];

  return [v2 keychainManager];
}

- (BOOL)removeCertificateWithLabel:(id)a3 realm:(id)a4
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:a3];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setLabel:a3];
  v7 = [(ACFKeychainManagerCertificateStoragePolicy *)self keychainManager];

  return [v7 removeItemWithInfo:v6];
}

- (BOOL)storeCertificate:(__SecCertificate *)a3 realm:(id)a4
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:a3];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setValueRef:a3];
  if (qword_2A1EB8EF8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    v7 = [v6 attributes];
    ACFLogNS(7, "[ACFKeychainManagerCertificateStoragePolicy storeCertificate:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManagerCertificateStoragePolicy.m", 35, 0, @"Storing public key certificate with info = %@", v8, v9, v7);
  }

  return [-[ACFKeychainManagerCertificateStoragePolicy keychainManager](self "keychainManager")] == 0;
}

- (__SecCertificate)certificateWithLabel:(id)a3 realm:(id)a4
{
  v6 = [ACFKeychainItemInfo keychainItemInfo:a3];
  [v6 setClassCode:*MEMORY[0x29EDBBC38]];
  [v6 setLabel:a3];
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