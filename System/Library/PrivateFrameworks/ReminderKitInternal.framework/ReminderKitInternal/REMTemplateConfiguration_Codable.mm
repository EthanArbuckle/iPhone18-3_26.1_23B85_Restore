@interface REMTemplateConfiguration_Codable
- (REMTemplateConfiguration_Codable)initWithSourceListID:(id)a3 shouldSaveCompleted:(BOOL)a4;
@end

@implementation REMTemplateConfiguration_Codable

- (REMTemplateConfiguration_Codable)initWithSourceListID:(id)a3 shouldSaveCompleted:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMTemplateConfiguration *)&v7 initWithSourceListID:a3 shouldSaveCompleted:v4];
}

@end