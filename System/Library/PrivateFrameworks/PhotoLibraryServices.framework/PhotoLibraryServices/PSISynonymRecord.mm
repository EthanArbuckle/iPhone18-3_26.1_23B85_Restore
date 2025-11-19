@interface PSISynonymRecord
- (PSISynonymRecord)initWithSynonym:(id)a3 category:(signed __int16)a4 identifier:(id)a5;
@end

@implementation PSISynonymRecord

- (PSISynonymRecord)initWithSynonym:(id)a3 category:(signed __int16)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = PSISynonymRecord;
  v10 = [(PSISynonymRecord *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    synonym = v10->_synonym;
    v10->_synonym = v11;

    v10->_category = a4;
    v13 = [v9 copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

@end