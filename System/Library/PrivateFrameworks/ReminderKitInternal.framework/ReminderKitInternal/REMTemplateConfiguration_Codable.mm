@interface REMTemplateConfiguration_Codable
- (REMTemplateConfiguration_Codable)initWithSourceListID:(id)d shouldSaveCompleted:(BOOL)completed;
@end

@implementation REMTemplateConfiguration_Codable

- (REMTemplateConfiguration_Codable)initWithSourceListID:(id)d shouldSaveCompleted:(BOOL)completed
{
  completedCopy = completed;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMTemplateConfiguration *)&v7 initWithSourceListID:d shouldSaveCompleted:completedCopy];
}

@end