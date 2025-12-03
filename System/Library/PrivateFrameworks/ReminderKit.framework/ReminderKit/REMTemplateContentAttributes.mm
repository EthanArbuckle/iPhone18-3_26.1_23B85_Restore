@interface REMTemplateContentAttributes
- (BOOL)isEqual:(id)equal;
- (REMTemplateContentAttributes)initWithCoder:(id)coder;
- (REMTemplateContentAttributes)initWithReminderCount:(int64_t)count hasDisplayDate:(BOOL)date hasHashtags:(BOOL)hashtags hasLocationTriggersOrVehicleEventTriggers:(BOOL)triggers hasImageAttachments:(BOOL)attachments;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTemplateContentAttributes

- (REMTemplateContentAttributes)initWithReminderCount:(int64_t)count hasDisplayDate:(BOOL)date hasHashtags:(BOOL)hashtags hasLocationTriggersOrVehicleEventTriggers:(BOOL)triggers hasImageAttachments:(BOOL)attachments
{
  v13.receiver = self;
  v13.super_class = REMTemplateContentAttributes;
  result = [(REMTemplateContentAttributes *)&v13 init];
  if (result)
  {
    result->_reminderCount = count;
    result->_hasDisplayDate = date;
    result->_hasHashtags = hashtags;
    result->_hasLocationTriggersOrVehicleEventTriggers = triggers;
    result->_hasImageAttachments = attachments;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[REMTemplateContentAttributes reminderCount](self, "reminderCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplateContentAttributes hasDisplayDate](self, "hasDisplayDate")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplateContentAttributes hasHashtags](self, "hasHashtags")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplateContentAttributes hasLocationTriggersOrVehicleEventTriggers](self, "hasLocationTriggersOrVehicleEventTriggers")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMTemplateContentAttributes hasImageAttachments](self, "hasImageAttachments")}];
  v10 = [v3 stringWithFormat:@"<%@: %p reminderCount: %@, hasDisplayDate: %@, hasHashtags: %@, hasLocationTriggersOrVehicleEventTriggers: %@, hasImageAttachments: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[REMTemplateContentAttributes reminderCount](self, "reminderCount"), v5 == [equalCopy reminderCount]) && (v6 = -[REMTemplateContentAttributes hasDisplayDate](self, "hasDisplayDate"), v6 == objc_msgSend(equalCopy, "hasDisplayDate")) && (v7 = -[REMTemplateContentAttributes hasHashtags](self, "hasHashtags"), v7 == objc_msgSend(equalCopy, "hasHashtags")) && (v8 = -[REMTemplateContentAttributes hasLocationTriggersOrVehicleEventTriggers](self, "hasLocationTriggersOrVehicleEventTriggers"), v8 == objc_msgSend(equalCopy, "hasLocationTriggersOrVehicleEventTriggers")))
  {
    hasImageAttachments = [(REMTemplateContentAttributes *)self hasImageAttachments];
    v9 = hasImageAttachments ^ [equalCopy hasImageAttachments] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMTemplateContentAttributes alloc];
  reminderCount = [(REMTemplateContentAttributes *)self reminderCount];
  hasDisplayDate = [(REMTemplateContentAttributes *)self hasDisplayDate];
  hasHashtags = [(REMTemplateContentAttributes *)self hasHashtags];
  hasLocationTriggersOrVehicleEventTriggers = [(REMTemplateContentAttributes *)self hasLocationTriggersOrVehicleEventTriggers];
  hasImageAttachments = [(REMTemplateContentAttributes *)self hasImageAttachments];

  return [(REMTemplateContentAttributes *)v4 initWithReminderCount:reminderCount hasDisplayDate:hasDisplayDate hasHashtags:hasHashtags hasLocationTriggersOrVehicleEventTriggers:hasLocationTriggersOrVehicleEventTriggers hasImageAttachments:hasImageAttachments];
}

- (REMTemplateContentAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"reminderCount"];
  v6 = [coderCopy decodeBoolForKey:@"hasDisplayDate"];
  v7 = [coderCopy decodeBoolForKey:@"hasHashtags"];
  v8 = [coderCopy decodeBoolForKey:@"hasLocationTriggersOrVehicleEventTriggers"];
  v9 = [coderCopy decodeBoolForKey:@"hasImageAttachments"];

  return [(REMTemplateContentAttributes *)self initWithReminderCount:v5 hasDisplayDate:v6 hasHashtags:v7 hasLocationTriggersOrVehicleEventTriggers:v8 hasImageAttachments:v9];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMTemplateContentAttributes reminderCount](self forKey:{"reminderCount"), @"reminderCount"}];
  [coderCopy encodeBool:-[REMTemplateContentAttributes hasDisplayDate](self forKey:{"hasDisplayDate"), @"hasDisplayDate"}];
  [coderCopy encodeBool:-[REMTemplateContentAttributes hasHashtags](self forKey:{"hasHashtags"), @"hasHashtags"}];
  [coderCopy encodeBool:-[REMTemplateContentAttributes hasLocationTriggersOrVehicleEventTriggers](self forKey:{"hasLocationTriggersOrVehicleEventTriggers"), @"hasLocationTriggersOrVehicleEventTriggers"}];
  [coderCopy encodeBool:-[REMTemplateContentAttributes hasImageAttachments](self forKey:{"hasImageAttachments"), @"hasImageAttachments"}];
}

@end