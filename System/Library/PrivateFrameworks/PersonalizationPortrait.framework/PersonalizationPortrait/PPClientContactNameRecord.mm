@interface PPClientContactNameRecord
- (PPClientContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9;
@end

@implementation PPClientContactNameRecord

- (PPClientContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  sourceIdentifierCopy2 = sourceIdentifier;
  nameCopy = name;
  firstNameCopy = firstName;
  firstNameCopy2 = firstName;
  middleNameCopy = middleName;
  phoneticMiddleNameCopy = phoneticMiddleName;
  lastNameCopy = lastName;
  phoneticLastNameCopy = phoneticLastName;
  organizationNameCopy = organizationName;
  titleCopy = title;
  nicknameCopy = nickname;
  namesCopy = names;
  streetNamesCopy = streetNames;
  cityNamesCopy = cityNames;
  v46.receiver = self;
  v46.super_class = PPClientContactNameRecord;
  init_ = [(PPContactNameRecord *)&v46 init_];
  v29 = init_;
  if (init_)
  {
    objc_storeStrong(init_ + 1, identifier);
    v29->_score = score;
    v29->_source = source;
    objc_storeStrong(&v29->_sourceIdentifier, sourceIdentifierCopy);
    v29->_changeType = type;
    objc_storeStrong(&v29->_firstName, name);
    objc_storeStrong(&v29->_phoneticFirstName, firstNameCopy);
    objc_storeStrong(&v29->_middleName, middleName);
    objc_storeStrong(&v29->_phoneticMiddleName, phoneticMiddleName);
    objc_storeStrong(&v29->_lastName, lastName);
    objc_storeStrong(&v29->_phoneticLastName, phoneticLastName);
    objc_storeStrong(&v29->_organizationName, organizationName);
    objc_storeStrong(&v29->_jobTitle, title);
    objc_storeStrong(&v29->_nickname, nickname);
    objc_storeStrong(&v29->_relatedNames, names);
    objc_storeStrong(&v29->_streetNames, streetNames);
    objc_storeStrong(&v29->_cityNames, cityNames);
  }

  return v29;
}

@end