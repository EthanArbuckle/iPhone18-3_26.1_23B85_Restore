@interface SOTimer
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SOTimer)initWithBuilder:(id)a3;
- (SOTimer)initWithCoder:(id)a3;
- (SOTimer)initWithTimerID:(id)a3 timerURL:(id)a4 isFiring:(BOOL)a5 title:(id)a6 state:(int64_t)a7 duration:(double)a8 type:(int64_t)a9 fireTimeInterval:(double)a10 fireDate:(id)a11 firedDate:(id)a12 dismissedDate:(id)a13 lastModifiedDate:(id)a14;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOTimer

- (void)encodeWithCoder:(id)a3
{
  timerID = self->_timerID;
  v10 = a3;
  [v10 encodeObject:timerID forKey:@"SOTimer::timerID"];
  [v10 encodeObject:self->_timerURL forKey:@"SOTimer::timerURL"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  [v10 encodeObject:v5 forKey:@"SOTimer::isFiring"];

  [v10 encodeObject:self->_title forKey:@"SOTimer::title"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [v10 encodeObject:v6 forKey:@"SOTimer::state"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [v10 encodeObject:v7 forKey:@"SOTimer::duration"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [v10 encodeObject:v8 forKey:@"SOTimer::type"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fireTimeInterval];
  [v10 encodeObject:v9 forKey:@"SOTimer::fireTimeInterval"];

  [v10 encodeObject:self->_fireDate forKey:@"SOTimer::fireDate"];
  [v10 encodeObject:self->_firedDate forKey:@"SOTimer::firedDate"];
  [v10 encodeObject:self->_dismissedDate forKey:@"SOTimer::dismissedDate"];
  [v10 encodeObject:self->_lastModifiedDate forKey:@"SOTimer::lastModifiedDate"];
}

- (SOTimer)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::timerID"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::timerURL"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::isFiring"];
  v24 = [v6 BOOLValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::title"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::state"];
  v9 = [v8 integerValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::duration"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::type"];
  v14 = [v13 integerValue];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::fireTimeInterval"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::fireDate"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::firedDate"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::dismissedDate"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::lastModifiedDate"];

  v22 = [(SOTimer *)self initWithTimerID:v4 timerURL:v5 isFiring:v24 title:v7 state:v9 duration:v14 type:v12 fireTimeInterval:v17 fireDate:v18 firedDate:v19 dismissedDate:v20 lastModifiedDate:v21];
  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isFiring = self->_isFiring;
      if (isFiring == [(SOTimer *)v5 isFiring]&& (state = self->_state, state == [(SOTimer *)v5 state]) && (duration = self->_duration, [(SOTimer *)v5 duration], duration == v9) && (type = self->_type, type == [(SOTimer *)v5 type]) && (fireTimeInterval = self->_fireTimeInterval, [(SOTimer *)v5 fireTimeInterval], fireTimeInterval == v12))
      {
        v15 = [(SOTimer *)v5 timerID];
        timerID = self->_timerID;
        if (timerID == v15 || [(NSUUID *)timerID isEqual:v15])
        {
          v17 = [(SOTimer *)v5 timerURL];
          timerURL = self->_timerURL;
          if (timerURL == v17 || [(NSURL *)timerURL isEqual:v17])
          {
            v19 = [(SOTimer *)v5 title];
            title = self->_title;
            if (title == v19 || [(NSString *)title isEqual:v19])
            {
              v21 = [(SOTimer *)v5 fireDate];
              fireDate = self->_fireDate;
              if (fireDate == v21 || [(NSDate *)fireDate isEqual:v21])
              {
                v23 = [(SOTimer *)v5 firedDate];
                firedDate = self->_firedDate;
                if (firedDate == v23 || [(NSDate *)firedDate isEqual:v23])
                {
                  v25 = [(SOTimer *)v5 dismissedDate];
                  dismissedDate = self->_dismissedDate;
                  if (dismissedDate == v25 || [(NSDate *)dismissedDate isEqual:v25])
                  {
                    v27 = [(SOTimer *)v5 lastModifiedDate];
                    lastModifiedDate = self->_lastModifiedDate;
                    v13 = lastModifiedDate == v27 || [(NSDate *)lastModifiedDate isEqual:v27];
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_timerID hash];
  v4 = [(NSURL *)self->_timerURL hash]^ v3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSString *)self->_title hash]^ v6;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  v9 = [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  v13 = [v12 hash];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fireTimeInterval];
  v15 = v13 ^ [v14 hash];
  v16 = v11 ^ v15 ^ [(NSDate *)self->_fireDate hash];
  v17 = [(NSDate *)self->_firedDate hash];
  v18 = v17 ^ [(NSDate *)self->_dismissedDate hash];
  v19 = v18 ^ [(NSDate *)self->_lastModifiedDate hash];

  return v16 ^ v19;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v20.receiver = self;
  v20.super_class = SOTimer;
  v5 = [(SOTimer *)&v20 description];
  state = self->_state;
  if (state > 3)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_279C3D430[state];
  }

  timerID = self->_timerID;
  timerURL = self->_timerURL;
  isFiring = self->_isFiring;
  title = self->_title;
  v12 = v7;
  duration = self->_duration;
  type = self->_type;
  if (type > 2)
  {
    v15 = @"(unknown)";
  }

  else
  {
    v15 = off_279C3CFC0[type];
  }

  if (isFiring)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = v15;
  v18 = [v4 initWithFormat:@"%@ {timerID = %@, timerURL = %@, isFiring = %@, title = %@, state = %@, duration = %f, type = %@, fireTimeInterval = %f, fireDate = %@, firedDate = %@, dismissedDate = %@, lastModifiedDate = %@}", v5, timerID, timerURL, v16, title, v12, *&duration, v17, *&self->_fireTimeInterval, self->_fireDate, self->_firedDate, self->_dismissedDate, self->_lastModifiedDate];

  return v18;
}

- (SOTimer)initWithTimerID:(id)a3 timerURL:(id)a4 isFiring:(BOOL)a5 title:(id)a6 state:(int64_t)a7 duration:(double)a8 type:(int64_t)a9 fireTimeInterval:(double)a10 fireDate:(id)a11 firedDate:(id)a12 dismissedDate:(id)a13 lastModifiedDate:(id)a14
{
  v21 = a3;
  v22 = a4;
  v23 = a6;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __138__SOTimer_initWithTimerID_timerURL_isFiring_title_state_duration_type_fireTimeInterval_fireDate_firedDate_dismissedDate_lastModifiedDate___block_invoke;
  v38[3] = &unk_279C3D520;
  v39 = v21;
  v40 = v22;
  v50 = a5;
  v47 = a8;
  v48 = a9;
  v49 = a10;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v46 = a7;
  v28 = v27;
  v29 = v26;
  v30 = v25;
  v31 = v24;
  v32 = v23;
  v33 = v22;
  v34 = v21;
  v35 = [(SOTimer *)self initWithBuilder:v38];

  return v35;
}

void __138__SOTimer_initWithTimerID_timerURL_isFiring_title_state_duration_type_fireTimeInterval_fireDate_firedDate_dismissedDate_lastModifiedDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTimerID:v3];
  [v4 setTimerURL:*(a1 + 40)];
  [v4 setIsFiring:*(a1 + 120)];
  [v4 setTitle:*(a1 + 48)];
  [v4 setState:*(a1 + 88)];
  [v4 setDuration:*(a1 + 96)];
  [v4 setType:*(a1 + 104)];
  [v4 setFireTimeInterval:*(a1 + 112)];
  [v4 setFireDate:*(a1 + 56)];
  [v4 setFiredDate:*(a1 + 64)];
  [v4 setDismissedDate:*(a1 + 72)];
  [v4 setLastModifiedDate:*(a1 + 80)];
}

- (SOTimer)initWithBuilder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SOTimer;
  v5 = [(SOTimer *)&v32 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SOTimerMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SOTimerMutation *)v7 isDirty])
    {
      v8 = [(_SOTimerMutation *)v7 getTimerID];
      v9 = [v8 copy];
      timerID = v6->_timerID;
      v6->_timerID = v9;

      v11 = [(_SOTimerMutation *)v7 getTimerURL];
      v12 = [v11 copy];
      timerURL = v6->_timerURL;
      v6->_timerURL = v12;

      v6->_isFiring = [(_SOTimerMutation *)v7 getIsFiring];
      v14 = [(_SOTimerMutation *)v7 getTitle];
      v15 = [v14 copy];
      title = v6->_title;
      v6->_title = v15;

      v6->_state = [(_SOTimerMutation *)v7 getState];
      [(_SOTimerMutation *)v7 getDuration];
      v6->_duration = v17;
      v6->_type = [(_SOTimerMutation *)v7 getType];
      [(_SOTimerMutation *)v7 getFireTimeInterval];
      v6->_fireTimeInterval = v18;
      v19 = [(_SOTimerMutation *)v7 getFireDate];
      v20 = [v19 copy];
      fireDate = v6->_fireDate;
      v6->_fireDate = v20;

      v22 = [(_SOTimerMutation *)v7 getFiredDate];
      v23 = [v22 copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v23;

      v25 = [(_SOTimerMutation *)v7 getDismissedDate];
      v26 = [v25 copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v26;

      v28 = [(_SOTimerMutation *)v7 getLastModifiedDate];
      v29 = [v28 copy];
      lastModifiedDate = v6->_lastModifiedDate;
      v6->_lastModifiedDate = v29;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SOTimerMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SOTimerMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOTimer);
      v7 = [(_SOTimerMutation *)v5 getTimerID];
      v8 = [v7 copy];
      timerID = v6->_timerID;
      v6->_timerID = v8;

      v10 = [(_SOTimerMutation *)v5 getTimerURL];
      v11 = [v10 copy];
      timerURL = v6->_timerURL;
      v6->_timerURL = v11;

      v6->_isFiring = [(_SOTimerMutation *)v5 getIsFiring];
      v13 = [(_SOTimerMutation *)v5 getTitle];
      v14 = [v13 copy];
      title = v6->_title;
      v6->_title = v14;

      v6->_state = [(_SOTimerMutation *)v5 getState];
      [(_SOTimerMutation *)v5 getDuration];
      v6->_duration = v16;
      v6->_type = [(_SOTimerMutation *)v5 getType];
      [(_SOTimerMutation *)v5 getFireTimeInterval];
      v6->_fireTimeInterval = v17;
      v18 = [(_SOTimerMutation *)v5 getFireDate];
      v19 = [v18 copy];
      fireDate = v6->_fireDate;
      v6->_fireDate = v19;

      v21 = [(_SOTimerMutation *)v5 getFiredDate];
      v22 = [v21 copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v22;

      v24 = [(_SOTimerMutation *)v5 getDismissedDate];
      v25 = [v24 copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v25;

      v27 = [(_SOTimerMutation *)v5 getLastModifiedDate];
      v28 = [v27 copy];
      lastModifiedDate = v6->_lastModifiedDate;
      v6->_lastModifiedDate = v28;
    }

    else
    {
      v6 = [(SOTimer *)self copy];
    }
  }

  else
  {
    v6 = [(SOTimer *)self copy];
  }

  return v6;
}

@end