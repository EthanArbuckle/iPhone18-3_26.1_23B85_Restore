@interface REMTemplateContentAttributes
- (BOOL)isEqual:(id)a3;
- (REMTemplateContentAttributes)initWithCoder:(id)a3;
- (REMTemplateContentAttributes)initWithReminderCount:(int64_t)a3 hasDisplayDate:(BOOL)a4 hasHashtags:(BOOL)a5 hasLocationTriggersOrVehicleEventTriggers:(BOOL)a6 hasImageAttachments:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTemplateContentAttributes

- (REMTemplateContentAttributes)initWithReminderCount:(int64_t)a3 hasDisplayDate:(BOOL)a4 hasHashtags:(BOOL)a5 hasLocationTriggersOrVehicleEventTriggers:(BOOL)a6 hasImageAttachments:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = REMTemplateContentAttributes;
  result = [(REMTemplateContentAttributes *)&v13 init];
  if (result)
  {
    result->_reminderCount = a3;
    result->_hasDisplayDate = a4;
    result->_hasHashtags = a5;
    result->_hasLocationTriggersOrVehicleEventTriggers = a6;
    result->_hasImageAttachments = a7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[REMTemplateContentAttributes reminderCount](self, "reminderCount"), v5 == [v4 reminderCount]) && (v6 = -[REMTemplateContentAttributes hasDisplayDate](self, "hasDisplayDate"), v6 == objc_msgSend(v4, "hasDisplayDate")) && (v7 = -[REMTemplateContentAttributes hasHashtags](self, "hasHashtags"), v7 == objc_msgSend(v4, "hasHashtags")) && (v8 = -[REMTemplateContentAttributes hasLocationTriggersOrVehicleEventTriggers](self, "hasLocationTriggersOrVehicleEventTriggers"), v8 == objc_msgSend(v4, "hasLocationTriggersOrVehicleEventTriggers")))
  {
    v11 = [(REMTemplateContentAttributes *)self hasImageAttachments];
    v9 = v11 ^ [v4 hasImageAttachments] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMTemplateContentAttributes alloc];
  v5 = [(REMTemplateContentAttributes *)self reminderCount];
  v6 = [(REMTemplateContentAttributes *)self hasDisplayDate];
  v7 = [(REMTemplateContentAttributes *)self hasHashtags];
  v8 = [(REMTemplateContentAttributes *)self hasLocationTriggersOrVehicleEventTriggers];
  v9 = [(REMTemplateContentAttributes *)self hasImageAttachments];

  return [(REMTemplateContentAttributes *)v4 initWithReminderCount:v5 hasDisplayDate:v6 hasHashtags:v7 hasLocationTriggersOrVehicleEventTriggers:v8 hasImageAttachments:v9];
}

- (REMTemplateContentAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"reminderCount"];
  v6 = [v4 decodeBoolForKey:@"hasDisplayDate"];
  v7 = [v4 decodeBoolForKey:@"hasHashtags"];
  v8 = [v4 decodeBoolForKey:@"hasLocationTriggersOrVehicleEventTriggers"];
  v9 = [v4 decodeBoolForKey:@"hasImageAttachments"];

  return [(REMTemplateContentAttributes *)self initWithReminderCount:v5 hasDisplayDate:v6 hasHashtags:v7 hasLocationTriggersOrVehicleEventTriggers:v8 hasImageAttachments:v9];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[REMTemplateContentAttributes reminderCount](self forKey:{"reminderCount"), @"reminderCount"}];
  [v4 encodeBool:-[REMTemplateContentAttributes hasDisplayDate](self forKey:{"hasDisplayDate"), @"hasDisplayDate"}];
  [v4 encodeBool:-[REMTemplateContentAttributes hasHashtags](self forKey:{"hasHashtags"), @"hasHashtags"}];
  [v4 encodeBool:-[REMTemplateContentAttributes hasLocationTriggersOrVehicleEventTriggers](self forKey:{"hasLocationTriggersOrVehicleEventTriggers"), @"hasLocationTriggersOrVehicleEventTriggers"}];
  [v4 encodeBool:-[REMTemplateContentAttributes hasImageAttachments](self forKey:{"hasImageAttachments"), @"hasImageAttachments"}];
}

@end