@interface WFEKCalendarDescriptor
- (BOOL)isEqual:(id)a3;
- (WFEKCalendarDescriptor)initWithAllCalendars;
- (WFEKCalendarDescriptor)initWithCalendarTitle:(id)a3 identifier:(id)a4 RGBAValue:(id)a5;
- (WFEKCalendarDescriptor)initWithCoder:(id)a3;
- (id)matchingCalendarsFromArray:(id)a3;
- (id)matchingRemindersListsFromArray:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEKCalendarDescriptor

- (id)matchingCalendarsFromArray:(id)a3
{
  v4 = a3;
  if ([(WFEKCalendarDescriptor *)self allCalendars])
  {
    v5 = v4;
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke;
    v11[3] = &unk_1E837BC10;
    v11[4] = self;
    v5 = [v4 if_objectsPassingTest:v11];
    if (![v5 count])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke_2;
      v10[3] = &unk_1E837BC10;
      v10[4] = self;
      v6 = [v4 if_objectsPassingTest:v10];

      v5 = v6;
    }

    if (![v5 count])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke_3;
      v9[3] = &unk_1E837BC10;
      v9[4] = self;
      v7 = [v4 if_objectsPassingTest:v9];

      v5 = v7;
    }
  }

  return v5;
}

uint64_t __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) calendarIdentifier];
  if (v4)
  {
    v5 = [v3 calendarIdentifier];
    v6 = [*(a1 + 32) calendarIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [*(a1 + 32) calendarTitle];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) calendarRGBAValue];

    if (v7)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [MEMORY[0x1E69E09E0] colorWithCGColor:{objc_msgSend(v3, "CGColor")}];
      v10 = [v8 numberWithUnsignedInt:{objc_msgSend(v9, "RGBAValue")}];

      v11 = [*(a1 + 32) calendarRGBAValue];
      v12 = [v10 isEqualToNumber:v11];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __53__WFEKCalendarDescriptor_matchingCalendarsFromArray___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [*(a1 + 32) calendarTitle];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)matchingRemindersListsFromArray:(id)a3
{
  v4 = a3;
  if ([(WFEKCalendarDescriptor *)self allCalendars])
  {
    v5 = v4;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__WFEKCalendarDescriptor_matchingRemindersListsFromArray___block_invoke;
    v9[3] = &unk_1E837BBE8;
    v9[4] = self;
    v5 = [v4 if_objectsPassingTest:v9];
    if (![v5 count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__WFEKCalendarDescriptor_matchingRemindersListsFromArray___block_invoke_2;
      v8[3] = &unk_1E837BBE8;
      v8[4] = self;
      v6 = [v4 if_objectsPassingTest:v8];

      v5 = v6;
    }
  }

  return v5;
}

uint64_t __58__WFEKCalendarDescriptor_matchingRemindersListsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) calendarIdentifier];
  if (v4)
  {
    v5 = [v3 objectID];
    v6 = [v5 stringRepresentation];
    v7 = [*(a1 + 32) calendarIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__WFEKCalendarDescriptor_matchingRemindersListsFromArray___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) calendarTitle];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (unint64_t)hash
{
  if ([(WFEKCalendarDescriptor *)self allCalendars])
  {
    v3 = 3405691582;
  }

  else
  {
    v3 = 3133065982;
  }

  v4 = [(WFEKCalendarDescriptor *)self calendarTitle];
  v5 = [v4 hash];
  v6 = [(WFEKCalendarDescriptor *)self calendarIdentifier];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(WFEKCalendarDescriptor *)self calendarRGBAValue];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(WFEKCalendarDescriptor *)v5 allCalendars]&& [(WFEKCalendarDescriptor *)self allCalendars])
      {
        v6 = 1;
LABEL_26:

        goto LABEL_27;
      }

      v7 = [(WFEKCalendarDescriptor *)v5 calendarIdentifier];
      v8 = [(WFEKCalendarDescriptor *)self calendarIdentifier];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        v6 = 0;
        if (!v9 || !v10)
        {
          goto LABEL_25;
        }

        v12 = [v9 isEqualToString:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v13 = [(WFEKCalendarDescriptor *)v5 calendarTitle];
      v14 = [(WFEKCalendarDescriptor *)self calendarTitle];
      v9 = v13;
      v15 = v14;
      v11 = v15;
      if (v9 == v15)
      {

LABEL_20:
        v17 = [(WFEKCalendarDescriptor *)v5 calendarRGBAValue];
        v18 = [(WFEKCalendarDescriptor *)self calendarRGBAValue];
        v9 = v17;
        v19 = v18;
        v11 = v19;
        if (v9 == v19)
        {
          v6 = 1;
        }

        else
        {
          v6 = 0;
          if (v9 && v19)
          {
            v6 = [v9 isEqual:v19];
          }
        }

        goto LABEL_25;
      }

      v6 = 0;
      if (v9 && v15)
      {
        v16 = [v9 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
LABEL_18:
          v6 = 0;
          goto LABEL_26;
        }

        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    v6 = 0;
  }

LABEL_27:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFEKCalendarDescriptor *)self calendarTitle];
  [v4 encodeObject:v5 forKey:@"calendarTitle"];

  v6 = [(WFEKCalendarDescriptor *)self calendarIdentifier];
  [v4 encodeObject:v6 forKey:@"calendarIdentifier"];

  v7 = [(WFEKCalendarDescriptor *)self calendarRGBAValue];
  [v4 encodeObject:v7 forKey:@"calendarRGBAValue"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[WFEKCalendarDescriptor allCalendars](self, "allCalendars")}];
  [v4 encodeObject:v8 forKey:@"allCalendars"];
}

- (WFEKCalendarDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarTitle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarRGBAValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allCalendars"];

  if ([v8 BOOLValue])
  {
    v9 = [(WFEKCalendarDescriptor *)self initWithAllCalendars];
  }

  else
  {
    v9 = [(WFEKCalendarDescriptor *)self initWithCalendarTitle:v5 identifier:v6 RGBAValue:v7];
  }

  v10 = v9;

  return v10;
}

- (WFEKCalendarDescriptor)initWithCalendarTitle:(id)a3 identifier:(id)a4 RGBAValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = WFEKCalendarDescriptor;
  v11 = [(WFEKCalendarDescriptor *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    calendarTitle = v11->_calendarTitle;
    v11->_calendarTitle = v12;

    v14 = [v9 copy];
    calendarIdentifier = v11->_calendarIdentifier;
    v11->_calendarIdentifier = v14;

    objc_storeStrong(&v11->_calendarRGBAValue, a5);
    v16 = v11;
  }

  return v11;
}

- (WFEKCalendarDescriptor)initWithAllCalendars
{
  v6.receiver = self;
  v6.super_class = WFEKCalendarDescriptor;
  v2 = [(WFEKCalendarDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_allCalendars = 1;
    v4 = v2;
  }

  return v3;
}

@end