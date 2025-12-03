@interface VUIRolesEntity
- (VUIRolesEntity)initWithDictionary:(id)dictionary;
@end

@implementation VUIRolesEntity

- (VUIRolesEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = VUIRolesEntity;
  v5 = [(VUIRolesEntity *)&v15 init];
  if (v5 && [dictionaryCopy count])
  {
    v6 = [dictionaryCopy vui_stringForKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [dictionaryCopy vui_stringForKey:@"roleTitle"];
    roleTitle = v5->_roleTitle;
    v5->_roleTitle = v8;

    v10 = [dictionaryCopy vui_stringForKey:@"personName"];
    personName = v5->_personName;
    v5->_personName = v10;

    v12 = [dictionaryCopy vui_stringForKey:@"characterName"];
    characterName = v5->_characterName;
    v5->_characterName = v12;
  }

  return v5;
}

@end