@interface _PSMapsPredictionContext
- (NSDate)suggestionDate;
- (_PSMapsPredictionContext)init;
- (_PSMapsPredictionContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSMapsPredictionContext

- (NSDate)suggestionDate
{
  suggestionDate = self->_suggestionDate;
  if (!suggestionDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = self->_suggestionDate;
    self->_suggestionDate = v4;

    suggestionDate = self->_suggestionDate;
  }

  return suggestionDate;
}

- (_PSMapsPredictionContext)init
{
  v10.receiver = self;
  v10.super_class = _PSMapsPredictionContext;
  v2 = [(_PSMapsPredictionContext *)&v10 init];
  v3 = v2;
  if (v2)
  {
    suggestionDate = v2->_suggestionDate;
    v2->_suggestionDate = 0;

    bundleID = v3->_bundleID;
    v3->_bundleID = 0;

    navigationStartLocationId = v3->_navigationStartLocationId;
    v3->_navigationStartLocationId = 0;

    navigationEndLocationId = v3->_navigationEndLocationId;
    v3->_navigationEndLocationId = 0;

    seedContactIdentifiers = v3->_seedContactIdentifiers;
    v3->_seedContactIdentifiers = 0;
  }

  return v3;
}

- (_PSMapsPredictionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _PSMapsPredictionContext;
  v5 = [(_PSMapsPredictionContext *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestionDate"];
    suggestionDate = v5->_suggestionDate;
    v5->_suggestionDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"navigationStartLocationId"];
    navigationStartLocationId = v5->_navigationStartLocationId;
    v5->_navigationStartLocationId = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"navigationEndLocationId"];
    navigationEndLocationId = v5->_navigationEndLocationId;
    v5->_navigationEndLocationId = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"seedContactIdentifiers"];
    seedContactIdentifiers = v5->_seedContactIdentifiers;
    v5->_seedContactIdentifiers = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  suggestionDate = self->_suggestionDate;
  v5 = a3;
  [v5 encodeObject:suggestionDate forKey:@"suggestionDate"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_navigationStartLocationId forKey:@"navigationStartLocationId"];
  [v5 encodeObject:self->_navigationEndLocationId forKey:@"navigationEndLocationId"];
  [v5 encodeObject:self->_seedContactIdentifiers forKey:@"seedContactIdentifiers"];
}

@end