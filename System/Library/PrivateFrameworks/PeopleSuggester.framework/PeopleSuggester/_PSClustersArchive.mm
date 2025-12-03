@interface _PSClustersArchive
- (_PSClustersArchive)initWithClustersDictionary:(id)dictionary archiveDate:(id)date;
- (_PSClustersArchive)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSClustersArchive

- (_PSClustersArchive)initWithClustersDictionary:(id)dictionary archiveDate:(id)date
{
  dictionaryCopy = dictionary;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = _PSClustersArchive;
  v9 = [(_PSClustersArchive *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clustersDictionary, dictionary);
    objc_storeStrong(&v10->_archiveDate, date);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  clustersDictionary = [(_PSClustersArchive *)self clustersDictionary];
  archiveDate = [(_PSClustersArchive *)self archiveDate];
  v7 = [v4 initWithClustersDictionary:clustersDictionary archiveDate:archiveDate];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clustersDictionary = [(_PSClustersArchive *)self clustersDictionary];
  v6 = NSStringFromSelector(sel_clustersDictionary);
  [coderCopy encodeObject:clustersDictionary forKey:v6];

  archiveDate = [(_PSClustersArchive *)self archiveDate];
  v7 = NSStringFromSelector(sel_archiveDate);
  [coderCopy encodeObject:archiveDate forKey:v7];
}

- (_PSClustersArchive)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v4 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = NSStringFromSelector(sel_clustersDictionary);
  v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];

  v15 = NSStringFromSelector(sel_archiveDate);
  v16 = [coderCopy decodeObjectOfClasses:v12 forKey:v15];

  v17 = [(_PSClustersArchive *)self initWithClustersDictionary:v14 archiveDate:v16];
  return v17;
}

@end