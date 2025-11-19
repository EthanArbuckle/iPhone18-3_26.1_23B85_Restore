@interface SKVolumeDescriptor
+ (id)descriptorWithName:(id)a3 filesystem:(id)a4;
+ (id)descriptorWithName:(id)a3 password:(id)a4 filesystem:(id)a5;
- (BOOL)validateForErase;
- (SKVolumeDescriptor)initWithCoder:(id)a3;
- (SKVolumeDescriptor)initWithName:(id)a3 password:(id)a4 filesystem:(id)a5;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKVolumeDescriptor

- (SKVolumeDescriptor)initWithName:(id)a3 password:(id)a4 filesystem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = SKVolumeDescriptor;
  v12 = [(SKVolumeDescriptor *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_filesystem, a5);
    objc_storeStrong(&v13->_name, a3);
    objc_storeStrong(&v13->_password, a4);
    if (!v13->_name)
    {
      v14 = [v11 majorType];
      v15 = [v14 isEqualToString:@"msdos"];

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

+ (id)descriptorWithName:(id)a3 filesystem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithName:v6 password:0 filesystem:v5];

  return v7;
}

+ (id)descriptorWithName:(id)a3 password:(id)a4 filesystem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithName:v9 password:v8 filesystem:v7];

  return v10;
}

- (BOOL)validateForErase
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SKVolumeDescriptor *)self name];
  v4 = [v3 length];

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
    v23 = self;
    v15 = "%s: Empty name on descriptor %@";
LABEL_17:
    _os_log_impl(&dword_26BBB8000, v14, OS_LOG_TYPE_ERROR, v15, &v20, 0x16u);
    goto LABEL_18;
  }

  v5 = [(SKVolumeDescriptor *)self password];
  if (v5)
  {
    v6 = v5;
    v7 = [(SKVolumeDescriptor *)self password];
    v8 = [v7 length];

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
      v23 = self;
      v15 = "%s: Empty password on descriptor %@";
      goto LABEL_17;
    }
  }

  v9 = [(SKVolumeDescriptor *)self password];
  if (v9)
  {
    v10 = v9;
    v11 = [(SKVolumeDescriptor *)self filesystem];
    v12 = [v11 isEncrypted];

    if ((v12 & 1) == 0)
    {
      v14 = SKGetOSLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v20 = 136315394;
      v21 = "[SKVolumeDescriptor validateForErase]";
      v22 = 2112;
      v23 = self;
      v15 = "%s: Non encrypted filesystem provided with password %@";
      goto LABEL_17;
    }
  }

  v13 = [(SKVolumeDescriptor *)self password];
  if (v13)
  {

LABEL_19:
    result = 1;
    goto LABEL_20;
  }

  v16 = [(SKVolumeDescriptor *)self filesystem];
  v17 = [v16 isEncrypted];

  if (!v17)
  {
    goto LABEL_19;
  }

  v14 = SKGetOSLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v20 = 136315394;
    v21 = "[SKVolumeDescriptor validateForErase]";
    v22 = 2112;
    v23 = self;
    v15 = "%s: Encrypted filesystem provided without password %@";
    goto LABEL_17;
  }

LABEL_18:

  result = 0;
LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKVolumeDescriptor *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(SKVolumeDescriptor *)self filesystem];
  v7 = [v6 dictionaryRepresentation];
  [v4 encodeObject:v7 forKey:@"fs"];

  v8 = [(SKVolumeDescriptor *)self password];
  [v4 encodeObject:v8 forKey:@"password"];
}

- (SKVolumeDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SKVolumeDescriptor;
  v5 = [(SKVolumeDescriptor *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"fs"];

    v18 = [[SKFilesystem alloc] initWithDictionaryRepresentation:v17];
    filesystem = v5->_filesystem;
    v5->_filesystem = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"password"];
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
  v6 = [(SKVolumeDescriptor *)self filesystem];
  v7 = [v3 stringWithFormat:@"<%@: { filesystem: %@}>", v5, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SKVolumeDescriptor *)self name];
  v7 = [(SKVolumeDescriptor *)self filesystem];
  v8 = [v3 stringWithFormat:@"<%@: { name: %@, filesystem: %@}>", v5, v6, v7];

  return v8;
}

@end