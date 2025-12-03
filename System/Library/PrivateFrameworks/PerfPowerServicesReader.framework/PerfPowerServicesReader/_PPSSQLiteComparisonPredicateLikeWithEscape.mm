@interface _PPSSQLiteComparisonPredicateLikeWithEscape
- (_PPSSQLiteComparisonPredicateLikeWithEscape)initWithProperty:(id)property value:(id)value escapeCharacter:(id)character;
- (id)sqlForEntity:(id)entity;
@end

@implementation _PPSSQLiteComparisonPredicateLikeWithEscape

- (_PPSSQLiteComparisonPredicateLikeWithEscape)initWithProperty:(id)property value:(id)value escapeCharacter:(id)character
{
  propertyCopy = property;
  valueCopy = value;
  characterCopy = character;
  v15.receiver = self;
  v15.super_class = _PPSSQLiteComparisonPredicateLikeWithEscape;
  v11 = [(PPSSQLiteComparisonPredicate *)&v15 initWithProperty:propertyCopy value:valueCopy comparisonType:7];
  if (v11)
  {
    v12 = [characterCopy copy];
    escapeCharacter = v11->_escapeCharacter;
    v11->_escapeCharacter = v12;
  }

  return v11;
}

- (id)sqlForEntity:(id)entity
{
  entityCopy = entity;
  property = [(PPSSQLitePropertyPredicate *)self property];
  v6 = [entityCopy disambiguatedSQLForProperty:property shouldEscape:1];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ LIKE ? ESCAPE '%@')", v6, self->_escapeCharacter];

  return v7;
}

@end