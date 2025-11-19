@interface SCSharingReminderCache
+ (id)cacheWithState:(id *)a3;
+ (id)new;
- ($036EC2AD71A582527DAFF881AF25695D)toCacheState;
- (BOOL)isEqual:(id)a3;
- (NSArray)ignoredIdentifiers;
- (NSArray)scheduledReminders;
- (SCSharingReminderCache)initWithCoder:(id)a3;
- (id)description;
- (id)ignoredIdentifiersForType:(id)a3;
- (id)initFromState:(id *)a3;
- (id)remindersDueBy:(id)a3;
- (void)addIgnoredIdentifiers:(id)a3 withType:(id)a4;
- (void)addSharingReminders:(id)a3;
- (void)deliverGeneralSharingReminderAfter:(double)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeRemindersWithIdentifiers:(id)a3;
@end

@implementation SCSharingReminderCache

+ (id)new
{
  v7 = xmmword_279B394C8;
  v8 = unk_279B394D8;
  result = [SCSharingReminderCache alloc];
  v3[0] = 0;
  v4 = 0;
  v5 = MEMORY[0x277CBEBF8];
  v6 = MEMORY[0x277CBEC10];
  if (result)
  {
    return [result initFromState:v3];
  }

  return result;
}

+ (id)cacheWithState:(id *)a3
{
  v16 = *MEMORY[0x277D85DE8];
  var1 = a3->var1;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [var1 laterDate:v5];
  v7 = [v6 isEqualToDate:a3->var1];

  if (v7)
  {
    v8 = SCLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = localizedDateStringFromUTC(a3->var1);
      [(SCSharingReminderCache *)v9 cacheWithState:buf, v8];
    }
  }

  else
  {
    v10 = [SCSharingReminderCache alloc];
    __copy_constructor_8_8_t0w1_s8_s16_s24(v14, a3);
    if (v10)
    {
      v11 = [(SCSharingReminderCache *)v10 initFromState:v14];
      goto LABEL_8;
    }

    v8 = v14[3];
  }

  v11 = 0;
LABEL_8:
  __destructor_8_s8_s16_s24(a3);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)initFromState:(id *)a3
{
  v12.receiver = self;
  v12.super_class = SCSharingReminderCache;
  v4 = [(SCSharingReminderCache *)&v12 init];
  if (v4)
  {
    v5 = objc_opt_new();
    scheduledSharingReminders = v4->_scheduledSharingReminders;
    v4->_scheduledSharingReminders = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    sharingRemindersByType = v4->_sharingRemindersByType;
    v4->_sharingRemindersByType = v7;

    v4->_consecutiveNotificationCount = a3->var0;
    objc_storeStrong(&v4->_lastFiredDate, a3->var1);
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3->var3];
    ignorableIdentifiersByType = v4->_ignorableIdentifiersByType;
    v4->_ignorableIdentifiersByType = v9;

    [(SCSharingReminderCache *)v4 addSharingReminders:a3->var2];
  }

  __destructor_8_s8_s16_s24(a3);
  return v4;
}

- (void)addSharingReminders:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(SCSharingReminderCache *)self scheduledSharingReminders];
    [v6 addObjectsFromArray:v5];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 type];
          v14 = [(SCSharingReminderCache *)self sharingRemindersByType];
          v15 = [v14 valueForKey:v13];

          if (!v15)
          {
            v16 = [(SCSharingReminderCache *)self sharingRemindersByType];
            v17 = [MEMORY[0x277CBEB40] orderedSet];
            [v16 setValue:v17 forKey:v13];
          }

          v18 = [(SCSharingReminderCache *)self sharingRemindersByType];
          v19 = [v18 valueForKey:v13];

          [v19 addObject:v12];
          v20 = [(SCSharingReminderCache *)self sharingRemindersByType];
          [v20 setValue:v19 forKey:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v5 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)removeRemindersWithIdentifiers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SCLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&dword_262556000, v5, OS_LOG_TYPE_INFO, "Removing sharing reminders with the following identifiers: %@", buf, 0xCu);
  }

  v6 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v7 = [v6 valueForKey:@"identifier"];

  v8 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v4 indexOfObject:{*(*(&v19 + 1) + 8 * v13), v19}];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v14;
          v16 = [(SCSharingReminderCache *)self scheduledSharingReminders];
          v17 = [v16 objectAtIndexedSubscript:v15];
          [v8 addObject:v17];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(SCSharingReminderCache *)self removeSharingReminders:v8 wereDelivered:0];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)deliverGeneralSharingReminderAfter:(double)a3
{
  if (a3 >= 0.0)
  {
    v6 = [(SCSharingReminderCache *)self sharingRemindersByType];
    v7 = [v6 valueForKey:@"com.apple.safetycheckd.general"];
    v4 = [v7 array];

    if ([v4 count]>= 2)
    {
      v8 = SCLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(SCSharingReminderCache *)v4 deliverGeneralSharingReminderAfter:v8];
      }
    }

    [(SCSharingReminderCache *)self removeSharingReminders:v4 wereDelivered:0];
  }

  else
  {
    v4 = SCLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SCSharingReminderCache *)v4 deliverGeneralSharingReminderAfter:a3];
    }
  }
}

- (id)remindersDueBy:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 scheduledDate];
        v13 = [v12 earlierDate:v4];
        v14 = [v11 scheduledDate];

        if (v13 == v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)scheduledReminders
{
  v2 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v3 = [v2 array];

  return v3;
}

- ($036EC2AD71A582527DAFF881AF25695D)toCacheState
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  retstr->var0 = [(SCSharingReminderCache *)self consecutiveNotificationCount];
  retstr->var1 = [(SCSharingReminderCache *)self lastFiredDate];
  v7 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  retstr->var2 = [v7 copy];
  v5 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  retstr->var3 = [v5 copy];

  return result;
}

- (void)addIgnoredIdentifiers:(id)a3 withType:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  v8 = [v7 valueForKey:v6];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB40] orderedSet];
  }

  [v8 addObjectsFromArray:v10];
  v9 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  [v9 setValue:v8 forKey:v6];
}

- (id)ignoredIdentifiersForType:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  v6 = [v5 valueForKey:v4];

  v7 = [v6 array];

  return v7;
}

- (NSArray)ignoredIdentifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) allObjects];
        [v3 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 array];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v6 = [v5 array];
  [v4 encodeObject:v6 forKey:@"scheduledSharingReminders"];

  v7 = [(SCSharingReminderCache *)self ignorableIdentifiersByType];
  [v4 encodeObject:v7 forKey:@"deliveredIdentifiersMap"];

  [v4 encodeInteger:-[SCSharingReminderCache consecutiveNotificationCount](self forKey:{"consecutiveNotificationCount"), @"consecutiveNotificationCount"}];
  v8 = [(SCSharingReminderCache *)self lastFiredDate];
  [v4 encodeObject:v8 forKey:@"lastFiredDate"];
}

- (SCSharingReminderCache)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SCSharingReminderCache;
  v5 = [(SCSharingReminderCache *)&v21 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"scheduledSharingReminders"];

    v10 = [MEMORY[0x277CBEB40] orderedSetWithArray:v9];
    scheduledSharingReminders = v5->_scheduledSharingReminders;
    v5->_scheduledSharingReminders = v10;

    v12 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"deliveredIdentifiersMap"];
    ignorableIdentifiersByType = v5->_ignorableIdentifiersByType;
    v5->_ignorableIdentifiersByType = v15;

    v5->_consecutiveNotificationCount = [v4 decodeIntegerForKey:@"consecutiveNotificationCount"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFiredDate"];
    lastFiredDate = v5->_lastFiredDate;
    v5->_lastFiredDate = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCSharingReminderCache *)v5 consecutiveNotificationCount];
      if (v6 != [(SCSharingReminderCache *)self consecutiveNotificationCount])
      {
        goto LABEL_9;
      }

      v7 = [(SCSharingReminderCache *)v5 scheduledSharingReminders];
      v8 = [v7 hash];
      v9 = [(SCSharingReminderCache *)self scheduledSharingReminders];
      v10 = [v9 hash];

      if (v8 != v10)
      {
        goto LABEL_9;
      }

      v11 = [MEMORY[0x277CBEA80] currentCalendar];
      v12 = [(SCSharingReminderCache *)v5 lastFiredDate];
      v13 = [(SCSharingReminderCache *)self lastFiredDate];
      v14 = [v11 isDate:v12 inSameDayAsDate:v13];

      if (v14)
      {
        v15 = [(SCSharingReminderCache *)v5 ignoredIdentifiers];
        v16 = [(SCSharingReminderCache *)self ignoredIdentifiers];
        v17 = [v15 isEqualToArray:v16];
      }

      else
      {
LABEL_9:
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SCSharingReminderCache *)self scheduledSharingReminders];
  v5 = [(SCSharingReminderCache *)self consecutiveNotificationCount];
  v6 = [(SCSharingReminderCache *)self lastFiredDate];
  v7 = localizedDateStringFromUTC(v6);
  v8 = [(SCSharingReminderCache *)self ignoredIdentifiers];
  v9 = [v3 stringWithFormat:@"[SCSharingReminderCache] Reminders: %@ notification count: %lu last fired date: %@ ignored: %@", v4, v5, v7, v8];

  return v9;
}

+ (void)cacheWithState:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_262556000, log, OS_LOG_TYPE_ERROR, "Error: initiating cache with a nonsensical last fired date [%@]", buf, 0xCu);
}

- (void)deliverGeneralSharingReminderAfter:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_262556000, a2, OS_LOG_TYPE_DEBUG, "Expected 0 or 1 general sharing reminder while resetting but found: %lu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)deliverGeneralSharingReminderAfter:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_error_impl(&dword_262556000, log, OS_LOG_TYPE_ERROR, "@Cache was asked to deliver a sharing reminder in the past: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end