@interface VUIRolesEntity
- (VUIRolesEntity)initWithDictionary:(id)a3;
@end

@implementation VUIRolesEntity

- (VUIRolesEntity)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VUIRolesEntity;
  v5 = [(VUIRolesEntity *)&v15 init];
  if (v5 && [v4 count])
  {
    v6 = [v4 vui_stringForKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 vui_stringForKey:@"roleTitle"];
    roleTitle = v5->_roleTitle;
    v5->_roleTitle = v8;

    v10 = [v4 vui_stringForKey:@"personName"];
    personName = v5->_personName;
    v5->_personName = v10;

    v12 = [v4 vui_stringForKey:@"characterName"];
    characterName = v5->_characterName;
    v5->_characterName = v12;
  }

  return v5;
}

@end