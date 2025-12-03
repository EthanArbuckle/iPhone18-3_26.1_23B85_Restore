@interface SOTimer
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SOTimer)initWithBuilder:(id)builder;
- (SOTimer)initWithCoder:(id)coder;
- (SOTimer)initWithTimerID:(id)d timerURL:(id)l isFiring:(BOOL)firing title:(id)title state:(int64_t)state duration:(double)duration type:(int64_t)type fireTimeInterval:(double)self0 fireDate:(id)self1 firedDate:(id)self2 dismissedDate:(id)self3 lastModifiedDate:(id)self4;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOTimer

- (void)encodeWithCoder:(id)coder
{
  timerID = self->_timerID;
  coderCopy = coder;
  [coderCopy encodeObject:timerID forKey:@"SOTimer::timerID"];
  [coderCopy encodeObject:self->_timerURL forKey:@"SOTimer::timerURL"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFiring];
  [coderCopy encodeObject:v5 forKey:@"SOTimer::isFiring"];

  [coderCopy encodeObject:self->_title forKey:@"SOTimer::title"];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_state];
  [coderCopy encodeObject:v6 forKey:@"SOTimer::state"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [coderCopy encodeObject:v7 forKey:@"SOTimer::duration"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [coderCopy encodeObject:v8 forKey:@"SOTimer::type"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fireTimeInterval];
  [coderCopy encodeObject:v9 forKey:@"SOTimer::fireTimeInterval"];

  [coderCopy encodeObject:self->_fireDate forKey:@"SOTimer::fireDate"];
  [coderCopy encodeObject:self->_firedDate forKey:@"SOTimer::firedDate"];
  [coderCopy encodeObject:self->_dismissedDate forKey:@"SOTimer::dismissedDate"];
  [coderCopy encodeObject:self->_lastModifiedDate forKey:@"SOTimer::lastModifiedDate"];
}

- (SOTimer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::timerID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::timerURL"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::isFiring"];
  bOOLValue = [v6 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::title"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::state"];
  integerValue = [v8 integerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::duration"];
  [v10 doubleValue];
  v12 = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::type"];
  integerValue2 = [v13 integerValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::fireTimeInterval"];
  [v15 doubleValue];
  v17 = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::fireDate"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::firedDate"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::dismissedDate"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SOTimer::lastModifiedDate"];

  v22 = [(SOTimer *)self initWithTimerID:v4 timerURL:v5 isFiring:bOOLValue title:v7 state:integerValue duration:integerValue2 type:v12 fireTimeInterval:v17 fireDate:v18 firedDate:v19 dismissedDate:v20 lastModifiedDate:v21];
  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isFiring = self->_isFiring;
      if (isFiring == [(SOTimer *)v5 isFiring]&& (state = self->_state, state == [(SOTimer *)v5 state]) && (duration = self->_duration, [(SOTimer *)v5 duration], duration == v9) && (type = self->_type, type == [(SOTimer *)v5 type]) && (fireTimeInterval = self->_fireTimeInterval, [(SOTimer *)v5 fireTimeInterval], fireTimeInterval == v12))
      {
        timerID = [(SOTimer *)v5 timerID];
        timerID = self->_timerID;
        if (timerID == timerID || [(NSUUID *)timerID isEqual:timerID])
        {
          timerURL = [(SOTimer *)v5 timerURL];
          timerURL = self->_timerURL;
          if (timerURL == timerURL || [(NSURL *)timerURL isEqual:timerURL])
          {
            title = [(SOTimer *)v5 title];
            title = self->_title;
            if (title == title || [(NSString *)title isEqual:title])
            {
              fireDate = [(SOTimer *)v5 fireDate];
              fireDate = self->_fireDate;
              if (fireDate == fireDate || [(NSDate *)fireDate isEqual:fireDate])
              {
                firedDate = [(SOTimer *)v5 firedDate];
                firedDate = self->_firedDate;
                if (firedDate == firedDate || [(NSDate *)firedDate isEqual:firedDate])
                {
                  dismissedDate = [(SOTimer *)v5 dismissedDate];
                  dismissedDate = self->_dismissedDate;
                  if (dismissedDate == dismissedDate || [(NSDate *)dismissedDate isEqual:dismissedDate])
                  {
                    lastModifiedDate = [(SOTimer *)v5 lastModifiedDate];
                    lastModifiedDate = self->_lastModifiedDate;
                    v13 = lastModifiedDate == lastModifiedDate || [(NSDate *)lastModifiedDate isEqual:lastModifiedDate];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (SOTimer)initWithTimerID:(id)d timerURL:(id)l isFiring:(BOOL)firing title:(id)title state:(int64_t)state duration:(double)duration type:(int64_t)type fireTimeInterval:(double)self0 fireDate:(id)self1 firedDate:(id)self2 dismissedDate:(id)self3 lastModifiedDate:(id)self4
{
  dCopy = d;
  lCopy = l;
  titleCopy = title;
  dateCopy = date;
  firedDateCopy = firedDate;
  dismissedDateCopy = dismissedDate;
  modifiedDateCopy = modifiedDate;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __138__SOTimer_initWithTimerID_timerURL_isFiring_title_state_duration_type_fireTimeInterval_fireDate_firedDate_dismissedDate_lastModifiedDate___block_invoke;
  v38[3] = &unk_279C3D520;
  v39 = dCopy;
  v40 = lCopy;
  firingCopy = firing;
  durationCopy = duration;
  typeCopy = type;
  intervalCopy = interval;
  v41 = titleCopy;
  v42 = dateCopy;
  v43 = firedDateCopy;
  v44 = dismissedDateCopy;
  v45 = modifiedDateCopy;
  stateCopy = state;
  v28 = modifiedDateCopy;
  v29 = dismissedDateCopy;
  v30 = firedDateCopy;
  v31 = dateCopy;
  v32 = titleCopy;
  v33 = lCopy;
  v34 = dCopy;
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

- (SOTimer)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v32.receiver = self;
  v32.super_class = SOTimer;
  v5 = [(SOTimer *)&v32 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SOTimerMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SOTimerMutation *)v7 isDirty])
    {
      getTimerID = [(_SOTimerMutation *)v7 getTimerID];
      v9 = [getTimerID copy];
      timerID = v6->_timerID;
      v6->_timerID = v9;

      getTimerURL = [(_SOTimerMutation *)v7 getTimerURL];
      v12 = [getTimerURL copy];
      timerURL = v6->_timerURL;
      v6->_timerURL = v12;

      v6->_isFiring = [(_SOTimerMutation *)v7 getIsFiring];
      getTitle = [(_SOTimerMutation *)v7 getTitle];
      v15 = [getTitle copy];
      title = v6->_title;
      v6->_title = v15;

      v6->_state = [(_SOTimerMutation *)v7 getState];
      [(_SOTimerMutation *)v7 getDuration];
      v6->_duration = v17;
      v6->_type = [(_SOTimerMutation *)v7 getType];
      [(_SOTimerMutation *)v7 getFireTimeInterval];
      v6->_fireTimeInterval = v18;
      getFireDate = [(_SOTimerMutation *)v7 getFireDate];
      v20 = [getFireDate copy];
      fireDate = v6->_fireDate;
      v6->_fireDate = v20;

      getFiredDate = [(_SOTimerMutation *)v7 getFiredDate];
      v23 = [getFiredDate copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v23;

      getDismissedDate = [(_SOTimerMutation *)v7 getDismissedDate];
      v26 = [getDismissedDate copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v26;

      getLastModifiedDate = [(_SOTimerMutation *)v7 getLastModifiedDate];
      v29 = [getLastModifiedDate copy];
      lastModifiedDate = v6->_lastModifiedDate;
      v6->_lastModifiedDate = v29;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SOTimerMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SOTimerMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SOTimer);
      getTimerID = [(_SOTimerMutation *)v5 getTimerID];
      v8 = [getTimerID copy];
      timerID = v6->_timerID;
      v6->_timerID = v8;

      getTimerURL = [(_SOTimerMutation *)v5 getTimerURL];
      v11 = [getTimerURL copy];
      timerURL = v6->_timerURL;
      v6->_timerURL = v11;

      v6->_isFiring = [(_SOTimerMutation *)v5 getIsFiring];
      getTitle = [(_SOTimerMutation *)v5 getTitle];
      v14 = [getTitle copy];
      title = v6->_title;
      v6->_title = v14;

      v6->_state = [(_SOTimerMutation *)v5 getState];
      [(_SOTimerMutation *)v5 getDuration];
      v6->_duration = v16;
      v6->_type = [(_SOTimerMutation *)v5 getType];
      [(_SOTimerMutation *)v5 getFireTimeInterval];
      v6->_fireTimeInterval = v17;
      getFireDate = [(_SOTimerMutation *)v5 getFireDate];
      v19 = [getFireDate copy];
      fireDate = v6->_fireDate;
      v6->_fireDate = v19;

      getFiredDate = [(_SOTimerMutation *)v5 getFiredDate];
      v22 = [getFiredDate copy];
      firedDate = v6->_firedDate;
      v6->_firedDate = v22;

      getDismissedDate = [(_SOTimerMutation *)v5 getDismissedDate];
      v25 = [getDismissedDate copy];
      dismissedDate = v6->_dismissedDate;
      v6->_dismissedDate = v25;

      getLastModifiedDate = [(_SOTimerMutation *)v5 getLastModifiedDate];
      v28 = [getLastModifiedDate copy];
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