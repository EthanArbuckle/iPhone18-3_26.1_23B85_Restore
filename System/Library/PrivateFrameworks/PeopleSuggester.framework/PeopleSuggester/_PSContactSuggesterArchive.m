@interface _PSContactSuggesterArchive
- (_PSContactSuggesterArchive)initWithArchiveDate:(id)a3 contactPriorDictionary:(id)a4;
- (_PSContactSuggesterArchive)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSContactSuggesterArchive

- (_PSContactSuggesterArchive)initWithArchiveDate:(id)a3 contactPriorDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSContactSuggesterArchive;
  v9 = [(_PSContactSuggesterArchive *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_archiveDate, a3);
    objc_storeStrong(&v10->_contactPriorDictionary, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_PSContactSuggesterArchive *)self archiveDate];
  v6 = [(_PSContactSuggesterArchive *)self contactPriorDictionary];
  v7 = [v4 initWithArchiveDate:v5 contactPriorDictionary:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_PSContactSuggesterArchive *)self contactPriorDictionary];
  v6 = NSStringFromSelector(sel_contactPriorDictionary);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(_PSContactSuggesterArchive *)self archiveDate];
  v7 = NSStringFromSelector(sel_archiveDate);
  [v4 encodeObject:v8 forKey:v7];
}

- (_PSContactSuggesterArchive)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = NSStringFromSelector(sel_contactPriorDictionary);
  v12 = [v5 decodeObjectOfClasses:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_archiveDate);
  v14 = [v5 decodeObjectOfClasses:v10 forKey:v13];

  v15 = [(_PSContactSuggesterArchive *)self initWithArchiveDate:v14 contactPriorDictionary:v12];
  return v15;
}

@end