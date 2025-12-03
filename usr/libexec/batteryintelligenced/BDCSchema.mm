@interface BDCSchema
+ (id)sharedBDCSchema;
- (BDCSchema)init;
- (id)bdcNameForColumnName:(id)name atVersion:(id)version;
- (id)bdcStreamNameforKey:(id)key atVersion:(id)version;
- (int)columnIndexForColumnName:(id)name atVersion:(id)version;
- (int)maxColumnIndexForBDCStream:(id)stream atVersion:(id)version;
@end

@implementation BDCSchema

+ (id)sharedBDCSchema
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D8C4;
  block[3] = &unk_100048718;
  block[4] = self;
  if (qword_1000579A8 != -1)
  {
    dispatch_once(&qword_1000579A8, block);
  }

  v2 = qword_1000579A0;

  return v2;
}

- (BDCSchema)init
{
  v11.receiver = self;
  v11.super_class = BDCSchema;
  v2 = [(BDCSchema *)&v11 init];
  if (v2)
  {
    v22 = @"1.3";
    v20[0] = @"timestamp";
    v18[0] = @"StreamName";
    v18[1] = @"ColumnName";
    v19[0] = @"BDC_SBC";
    v19[1] = @"timestamp";
    v18[2] = @"ColumnIndexinCSV";
    v18[3] = @"DataType";
    v19[2] = &off_10004D528;
    v19[3] = &off_10004D540;
    v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
    v21[0] = v10;
    v20[1] = @"uisoc";
    v16[0] = @"StreamName";
    v16[1] = @"ColumnName";
    v17[0] = @"BDC_SBC";
    v17[1] = @"CurrentCapacity";
    v16[2] = @"ColumnIndexinCSV";
    v16[3] = @"DataType";
    v17[2] = &off_10004D558;
    v17[3] = &off_10004D570;
    v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
    v20[2] = @"temp";
    v21[1] = v3;
    v15[0] = @"BDC_SBC";
    v15[1] = @"Temperature";
    v14[0] = @"StreamName";
    v14[1] = @"ColumnName";
    v14[2] = @"ColumnIndexinCSV";
    v14[3] = @"DataType";
    v15[2] = &off_10004D588;
    v15[3] = &off_10004D570;
    v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
    v21[2] = v4;
    v20[3] = @"amperage";
    v12[0] = @"StreamName";
    v12[1] = @"ColumnName";
    v13[0] = @"BDC_SBC";
    v13[1] = @"Amperage";
    v12[2] = @"ColumnIndexinCSV";
    v12[3] = @"DataType";
    v13[2] = &off_10004D5A0;
    v13[3] = &off_10004D570;
    v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
    v20[4] = @"maxColumnIdx";
    v21[3] = v5;
    v21[4] = &off_10004D5B8;
    v6 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:5];
    v23 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    versionSchemaMap = v2->_versionSchemaMap;
    v2->_versionSchemaMap = v7;
  }

  return v2;
}

- (id)bdcStreamNameforKey:(id)key atVersion:(id)version
{
  keyCopy = key;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_versionSchemaMap;
  v7 = [(NSDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * i) isEqualToString:{keyCopy, v14}])
        {
          v12 = [(NSDictionary *)self->_versionSchemaMap objectForKeyedSubscript:keyCopy];
          v11 = [v12 objectForKeyedSubscript:@"StreamName"];

          goto LABEL_11;
        }
      }

      v8 = [(NSDictionary *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (int)maxColumnIndexForBDCStream:(id)stream atVersion:(id)version
{
  versionCopy = version;
  if ([stream isEqual:@"BDC_SBC"] && (-[NSDictionary objectForKeyedSubscript:](self->_versionSchemaMap, "objectForKeyedSubscript:", versionCopy), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 objectForKeyedSubscript:@"maxColumnIdx"];
    intValue = [v9 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (int)columnIndexForColumnName:(id)name atVersion:(id)version
{
  nameCopy = name;
  v7 = [(NSDictionary *)self->_versionSchemaMap objectForKeyedSubscript:version];
  v8 = v7;
  if (v7 && ([v7 objectForKeyedSubscript:nameCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v9 objectForKeyedSubscript:@"ColumnIndexinCSV"];
    intValue = [v11 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (id)bdcNameForColumnName:(id)name atVersion:(id)version
{
  nameCopy = name;
  v7 = [(NSDictionary *)self->_versionSchemaMap objectForKeyedSubscript:version];
  v8 = v7;
  if (v7 && ([v7 objectForKeyedSubscript:nameCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v9 objectForKeyedSubscript:@"ColumnName"];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end