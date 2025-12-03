@interface MBFileSystemSnapshot
- (MBFileSystemSnapshot)initWithName:(id)name uuid:(id)uuid creationDate:(id)date;
- (id)description;
@end

@implementation MBFileSystemSnapshot

- (MBFileSystemSnapshot)initWithName:(id)name uuid:(id)uuid creationDate:(id)date
{
  nameCopy = name;
  uuidCopy = uuid;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MBFileSystemSnapshot;
  v11 = [(MBFileSystemSnapshot *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MBFileSystemSnapshot *)v11 setName:nameCopy];
    [(MBFileSystemSnapshot *)v12 setUuid:uuidCopy];
    [(MBFileSystemSnapshot *)v12 setCreationDate:dateCopy];
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  name = [(MBFileSystemSnapshot *)self name];
  uuid = [(MBFileSystemSnapshot *)self uuid];
  creationDate = [(MBFileSystemSnapshot *)self creationDate];
  v7 = MBStringWithDate();
  creationDate2 = [(MBFileSystemSnapshot *)self creationDate];
  [creationDate2 timeIntervalSince1970];
  v10 = [NSString stringWithFormat:@"<%@: name=%@, uuid=%@, creationDate=%@(%.3f)>", v3, name, uuid, v7, v9];

  return v10;
}

@end