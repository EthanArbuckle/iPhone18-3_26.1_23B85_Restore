@interface SRUIFDialogPhase
+ (id)_dialogPhaseWithType:(int64_t)a3;
+ (id)dialogPhaseForAceDialogPhase:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDialogPhase:(id)a3;
- (NSString)aceDialogPhaseValue;
- (SRUIFDialogPhase)initWithCoder:(id)a3;
- (id)_initWithType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRUIFDialogPhase

+ (id)dialogPhaseForAceDialogPhase:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277D48BD0]])
  {
    v4 = +[SRUIFDialogPhase acknowledgementDialogPhase];
LABEL_21:
    v5 = v4;
    goto LABEL_22;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48C08]])
  {
    v4 = +[SRUIFDialogPhase reflectionDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48C10]])
  {
    v4 = +[SRUIFDialogPhase statusDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48BE0]])
  {
    v4 = +[SRUIFDialogPhase clarificationDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48C18]])
  {
    v4 = +[SRUIFDialogPhase summaryDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48BF0]])
  {
    v4 = +[SRUIFDialogPhase confirmationDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48BE8]])
  {
    v4 = +[SRUIFDialogPhase completionDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48C00]])
  {
    v4 = +[SRUIFDialogPhase errorDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48BF8]])
  {
    v4 = +[SRUIFDialogPhase confirmedDialogPhase];
    goto LABEL_21;
  }

  if ([v3 isEqualToString:*MEMORY[0x277D48BD8]])
  {
    v4 = +[SRUIFDialogPhase cancelledDialogPhase];
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

+ (id)_dialogPhaseWithType:(int64_t)a3
{
  v3 = [[SRUIFDialogPhase alloc] _initWithType:a3];

  return v3;
}

- (id)_initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SRUIFDialogPhase;
  result = [(SRUIFDialogPhase *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SRUIFDialogPhase _type](self forKey:{"_type"), @"SRUIFDialogPhaseType"}];
}

- (SRUIFDialogPhase)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SRUIFDialogPhase;
  v5 = [(SRUIFDialogPhase *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"SRUIFDialogPhaseType"];
  }

  return v5;
}

- (BOOL)isEqualToDialogPhase:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFDialogPhase *)self _type];
  v6 = [v4 _type];

  return v5 == v6;
}

- (NSString)aceDialogPhaseValue
{
  v3 = [(SRUIFDialogPhase *)self _type];
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v4 = MEMORY[0x277D48C10];
      }

      else if (v3 == 4)
      {
        v4 = MEMORY[0x277D48BE0];
      }

      else
      {
        v4 = MEMORY[0x277D48C18];
      }

      goto LABEL_24;
    }

    if (v3 == 1)
    {
      v4 = MEMORY[0x277D48BD0];
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_28;
      }

      v4 = MEMORY[0x277D48C08];
    }
  }

  else
  {
    if (v3 <= 8)
    {
      if (v3 == 6)
      {
        v4 = MEMORY[0x277D48BF0];
      }

      else if (v3 == 7)
      {
        v4 = MEMORY[0x277D48BE8];
      }

      else
      {
        v4 = MEMORY[0x277D48C00];
      }

      goto LABEL_24;
    }

    switch(v3)
    {
      case 9:
        v4 = MEMORY[0x277D48BF8];
        break;
      case 10:
        v4 = MEMORY[0x277D48BD8];
        break;
      case 11:
        v5 = 0;
        goto LABEL_25;
      default:
LABEL_28:
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE658];
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected value for _type: %ld", -[SRUIFDialogPhase _type](self, "_type")];
        v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
        v11 = v10;

        objc_exception_throw(v10);
    }
  }

LABEL_24:
  v5 = *v4;
LABEL_25:

  return v5;
}

- (id)description
{
  v3 = +[SRUIFDialogPhase acknowledgementDialogPhase];
  v4 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v3];

  if (v4)
  {
    v5 = @"acknowledgementDialogPhase";
  }

  else
  {
    v6 = +[SRUIFDialogPhase reflectionDialogPhase];
    v7 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v6];

    if (v7)
    {
      v5 = @"reflectionDialogPhase";
    }

    else
    {
      v8 = +[SRUIFDialogPhase statusDialogPhase];
      v9 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v8];

      if (v9)
      {
        v5 = @"statusDialogPhase";
      }

      else
      {
        v10 = +[SRUIFDialogPhase clarificationDialogPhase];
        v11 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v10];

        if (v11)
        {
          v5 = @"clarificationDialogPhase";
        }

        else
        {
          v12 = +[SRUIFDialogPhase summaryDialogPhase];
          v13 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v12];

          if (v13)
          {
            v5 = @"summaryDialogPhase";
          }

          else
          {
            v14 = +[SRUIFDialogPhase confirmationDialogPhase];
            v15 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v14];

            if (v15)
            {
              v5 = @"confirmationDialogPhase";
            }

            else
            {
              v16 = +[SRUIFDialogPhase completionDialogPhase];
              v17 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v16];

              if (v17)
              {
                v5 = @"completionDialogPhase";
              }

              else
              {
                v18 = +[SRUIFDialogPhase errorDialogPhase];
                v19 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v18];

                if (v19)
                {
                  v5 = @"errorDialogPhase";
                }

                else
                {
                  v20 = +[SRUIFDialogPhase confirmedDialogPhase];
                  v21 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v20];

                  if (v21)
                  {
                    v5 = @"confirmedDialogPhase";
                  }

                  else
                  {
                    v22 = +[SRUIFDialogPhase cancelledDialogPhase];
                    v23 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v22];

                    if (v23)
                    {
                      v5 = @"cancelledDialogPhase";
                    }

                    else
                    {
                      v24 = +[SRUIFDialogPhase userRequestDialogPhase];
                      v25 = [(SRUIFDialogPhase *)self isEqualToDialogPhase:v24];

                      if (v25)
                      {
                        v5 = @"userRequestDialogPhase";
                      }

                      else
                      {
                        v5 = @"unknown dialogPhase";
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %@>", objc_opt_class(), v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SRUIFDialogPhase *)self isEqualToDialogPhase:v4];
  }

  return v5;
}

@end