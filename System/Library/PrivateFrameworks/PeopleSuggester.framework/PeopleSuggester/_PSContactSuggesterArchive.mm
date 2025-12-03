@interface _PSContactSuggesterArchive
- (_PSContactSuggesterArchive)initWithArchiveDate:(id)date contactPriorDictionary:(id)dictionary;
- (_PSContactSuggesterArchive)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSContactSuggesterArchive

- (_PSContactSuggesterArchive)initWithArchiveDate:(id)date contactPriorDictionary:(id)dictionary
{
  dateCopy = date;
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _PSContactSuggesterArchive;
  v9 = [(_PSContactSuggesterArchive *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_archiveDate, date);
    objc_storeStrong(&v10->_contactPriorDictionary, dictionary);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  archiveDate = [(_PSContactSuggesterArchive *)self archiveDate];
  contactPriorDictionary = [(_PSContactSuggesterArchive *)self contactPriorDictionary];
  v7 = [v4 initWithArchiveDate:archiveDate contactPriorDictionary:contactPriorDictionary];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactPriorDictionary = [(_PSContactSuggesterArchive *)self contactPriorDictionary];
  v6 = NSStringFromSelector(sel_contactPriorDictionary);
  [coderCopy encodeObject:contactPriorDictionary forKey:v6];

  archiveDate = [(_PSContactSuggesterArchive *)self archiveDate];
  v7 = NSStringFromSelector(sel_archiveDate);
  [coderCopy encodeObject:archiveDate forKey:v7];
}

- (_PSContactSuggesterArchive)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = NSStringFromSelector(sel_contactPriorDictionary);
  v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_archiveDate);
  v14 = [coderCopy decodeObjectOfClasses:v10 forKey:v13];

  v15 = [(_PSContactSuggesterArchive *)self initWithArchiveDate:v14 contactPriorDictionary:v12];
  return v15;
}

@end