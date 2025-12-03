@interface PSISynonymRecord
- (PSISynonymRecord)initWithSynonym:(id)synonym category:(signed __int16)category identifier:(id)identifier;
@end

@implementation PSISynonymRecord

- (PSISynonymRecord)initWithSynonym:(id)synonym category:(signed __int16)category identifier:(id)identifier
{
  synonymCopy = synonym;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = PSISynonymRecord;
  v10 = [(PSISynonymRecord *)&v16 init];
  if (v10)
  {
    v11 = [synonymCopy copy];
    synonym = v10->_synonym;
    v10->_synonym = v11;

    v10->_category = category;
    v13 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;
  }

  return v10;
}

@end