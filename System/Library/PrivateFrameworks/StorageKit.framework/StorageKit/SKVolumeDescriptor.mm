@interface SKVolumeDescriptor
+ (id)descriptorWithName:(id)name filesystem:(id)filesystem;
+ (id)descriptorWithName:(id)name password:(id)password filesystem:(id)filesystem;
- (BOOL)validateForErase;
- (SKVolumeDescriptor)initWithCoder:(id)coder;
- (SKVolumeDescriptor)initWithName:(id)name password:(id)password filesystem:(id)filesystem;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKVolumeDescriptor

- (SKVolumeDescriptor)initWithName:(id)name password:(id)password filesystem:(id)filesystem
{
  nameCopy = name;
  passwordCopy = password;
  filesystemCopy = filesystem;
  v19.receiver = self;
  v19.super_class = SKVolumeDescriptor;
  v12 = [(SKVolumeDescriptor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_filesystem, filesystem);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_password, password);
    if (!v13->_name)
    {
      majorType = [filesystemCopy majorType];
      v15 = [majorType isEqualToString:@"msdos"];

      name = v13->_name;
      if (v15)
      {
        v17 = @"NO NAME";
LABEL_7:
        v13->_name = &v17->isa;

        goto LABEL_8;
      }

      if (!name)
      {
        v17 = @"Untitled";
        goto LABEL_7;
      }
    }
  }

LABEL_8:

  return v13;
}

+ (id)descriptorWithName:(id)name filesystem:(id)filesystem
{
  filesystemCopy = filesystem;
  nameCopy = name;
  v7 = [objc_alloc(objc_opt_class()) initWithName:nameCopy password:0 filesystem:filesystemCopy];

  return v7;
}

+ (id)descriptorWithName:(id)name password:(id)password filesystem:(id)filesystem
{
  filesystemCopy = filesystem;
  passwordCopy = password;
  nameCopy = name;
  v10 = [objc_alloc(objc_opt_class()) initWithName:nameCopy password:passwordCopy filesystem:filesystemCopy];

  return v10;
}

- (BOOL)validateForErase
{
  v24 = *MEMORY[0x277D85DE8];
  name = [(SKVolumeDescriptor *)self name];
  v4 = [name length];

  if (!v4)
  {
    v14 = SKGetOSLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v20 = 136315394;
    v21 = "[SKVolumeDescriptor validateForErase]";
    v22 = 2112;
    selfCopy4 = self;
    v15 = "%s: Empty name on descriptor %@";
LABEL_17:
    _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, v15, &v20, 0x16u);
    goto LABEL_18;
  }

  password = [(SKVolumeDescriptor *)self password];
  if (password)
  {
    v6 = password;
    password2 = [(SKVolumeDescriptor *)self password];
    v8 = [password2 length];

    if (!v8)
    {
      v14 = SKGetOSLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v20 = 136315394;
      v21 = "[SKVolumeDescriptor validateForErase]";
      v22 = 2112;
      selfCopy4 = self;
      v15 = "%s: Empty password on descriptor %@";
      goto LABEL_17;
    }
  }

  password3 = [(SKVolumeDescriptor *)self password];
  if (password3)
  {
    v10 = password3;
    filesystem = [(SKVolumeDescriptor *)self filesystem];
    isEncrypted = [filesystem isEncrypted];

    if ((isEncrypted & 1) == 0)
    {
      v14 = SKGetOSLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v20 = 136315394;
      v21 = "[SKVolumeDescriptor validateForErase]";
      v22 = 2112;
      selfCopy4 = self;
      v15 = "%s: Non encrypted filesystem provided with password %@";
      goto LABEL_17;
    }
  }

  password4 = [(SKVolumeDescriptor *)self password];
  if (password4)
  {

LABEL_19:
    result = 1;
    goto LABEL_20;
  }

  filesystem2 = [(SKVolumeDescriptor *)self filesystem];
  isEncrypted2 = [filesystem2 isEncrypted];

  if (!isEncrypted2)
  {
    goto LABEL_19;
  }

  v14 = SKGetOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[SKVolumeDescriptor validateForErase]";
    v22 = 2112;
    selfCopy4 = self;
    v15 = "%s: Encrypted filesystem provided without password %@";
    goto LABEL_17;
  }

LABEL_18:

  result = 0;
LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SKVolumeDescriptor *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  filesystem = [(SKVolumeDescriptor *)self filesystem];
  dictionaryRepresentation = [filesystem dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"fs"];

  password = [(SKVolumeDescriptor *)self password];
  [coderCopy encodeObject:password forKey:@"password"];
}

- (SKVolumeDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = SKVolumeDescriptor;
  v5 = [(SKVolumeDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v23 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v23 setWithObjects:{v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"fs"];

    v18 = [[SKFilesystem alloc] initWithDictionaryRepresentation:v17];
    filesystem = v5->_filesystem;
    v5->_filesystem = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"password"];
    password = v5->_password;
    v5->_password = v20;
  }

  return v5;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  filesystem = [(SKVolumeDescriptor *)self filesystem];
  v7 = [v3 stringWithFormat:@"<%@: { filesystem: %@}>", v5, filesystem];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(SKVolumeDescriptor *)self name];
  filesystem = [(SKVolumeDescriptor *)self filesystem];
  v8 = [v3 stringWithFormat:@"<%@: { name: %@, filesystem: %@}>", v5, name, filesystem];

  return v8;
}

@end