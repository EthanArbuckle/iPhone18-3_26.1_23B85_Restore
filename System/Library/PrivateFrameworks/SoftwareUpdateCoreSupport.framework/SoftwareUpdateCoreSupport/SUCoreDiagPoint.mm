@interface SUCoreDiagPoint
- (SUCoreDiagPoint)initWithCoder:(id)coder;
- (id)_descriptionStandard;
- (id)_descriptionStateEvent;
- (id)_initFullySpecified:(int64_t)specified fromLocation:(id)location forReason:(id)reason withCode:(int64_t)code withError:(id)error previous:(id)previous next:(id)next activity:(id)self0 param:(id)self1;
- (id)_summaryStandard;
- (id)_summaryStateEvent;
- (id)description;
- (id)summary;
- (id)typeName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreDiagPoint

- (id)typeName
{
  trackType = [(SUCoreDiagPoint *)self trackType];
  trackType2 = [(SUCoreDiagPoint *)self trackType];
  if (trackType)
  {
    v5 = @"BEGIN";
    if ((trackType2 & 2) != 0)
    {
      [@"BEGIN" stringByAppendingString:@"|END"];
    }
  }

  else
  {
    if ((trackType2 & 2) == 0)
    {
      v5 = (@"ERROR" & ([(SUCoreDiagPoint *)self trackType]<< 61 >> 63));
      goto LABEL_9;
    }

    v5 = @"END";
  }

  if (([(SUCoreDiagPoint *)self trackType]& 4) != 0)
  {
    [(__CFString *)v5 stringByAppendingString:@"|ERROR"];
  }

LABEL_9:
  if (([(SUCoreDiagPoint *)self trackType]& 8) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|ANOMALY"];
    }

    else
    {
      v5 = @"ANOMALY";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x10) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FAILURE"];
    }

    else
    {
      v5 = @"FAILURE";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x20) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FAULT"];
    }

    else
    {
      v5 = @"FAULT";
    }
  }

  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    if (v5)
    {
      [(__CFString *)v5 stringByAppendingString:@"|FSM"];
    }

    else
    {
      return @"FSM";
    }
  }

  return v5;
}

- (id)description
{
  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    [(SUCoreDiagPoint *)self _descriptionStateEvent];
  }

  else
  {
    [(SUCoreDiagPoint *)self _descriptionStandard];
  }
  v3 = ;

  return v3;
}

- (id)_descriptionStateEvent
{
  next = [(SUCoreDiagPoint *)self next];

  activity = [(SUCoreDiagPoint *)self activity];

  if (!next)
  {
    if (!activity)
    {
      v20 = MEMORY[0x1E696AEC0];
      typeName = [(SUCoreDiagPoint *)self typeName];
      location = [(SUCoreDiagPoint *)self location];
      previous = [(SUCoreDiagPoint *)self previous];
      reason = [(SUCoreDiagPoint *)self reason];
      v15 = [v20 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@", typeName, location, previous, reason];
      goto LABEL_16;
    }

    param = [(SUCoreDiagPoint *)self param];

    v17 = MEMORY[0x1E696AEC0];
    typeName = [(SUCoreDiagPoint *)self typeName];
    location = [(SUCoreDiagPoint *)self location];
    previous = [(SUCoreDiagPoint *)self previous];
    reason = [(SUCoreDiagPoint *)self reason];
    activity2 = [(SUCoreDiagPoint *)self activity];
    next2 = activity2;
    if (param)
    {
      param2 = [(SUCoreDiagPoint *)self param];
      [v17 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >A> %@ info:%@", typeName, location, previous, reason, next2, param2];
      v15 = LABEL_10:;
      goto LABEL_11;
    }

    [v17 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >A> %@", typeName, location, previous, reason, activity2];
    v15 = LABEL_14:;
    goto LABEL_15;
  }

  if (!activity)
  {
    v19 = MEMORY[0x1E696AEC0];
    typeName = [(SUCoreDiagPoint *)self typeName];
    location = [(SUCoreDiagPoint *)self location];
    previous = [(SUCoreDiagPoint *)self previous];
    reason = [(SUCoreDiagPoint *)self reason];
    next2 = [(SUCoreDiagPoint *)self next];
    [v19 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@", typeName, location, previous, reason, next2];
    goto LABEL_14;
  }

  param3 = [(SUCoreDiagPoint *)self param];

  v6 = MEMORY[0x1E696AEC0];
  typeName = [(SUCoreDiagPoint *)self typeName];
  location = [(SUCoreDiagPoint *)self location];
  previous = [(SUCoreDiagPoint *)self previous];
  reason = [(SUCoreDiagPoint *)self reason];
  next2 = [(SUCoreDiagPoint *)self next];
  activity3 = [(SUCoreDiagPoint *)self activity];
  param2 = activity3;
  if (!param3)
  {
    [v6 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@ >A> %@", typeName, location, previous, reason, next2, activity3];
    goto LABEL_10;
  }

  param4 = [(SUCoreDiagPoint *)self param];
  v15 = [v6 stringWithFormat:@"[%@(%@)] >S> %@ >E> %@ >N> %@ >A> %@ info:%@", typeName, location, previous, reason, next2, param2, param4];

LABEL_11:
LABEL_15:

LABEL_16:

  return v15;
}

- (id)_initFullySpecified:(int64_t)specified fromLocation:(id)location forReason:(id)reason withCode:(int64_t)code withError:(id)error previous:(id)previous next:(id)next activity:(id)self0 param:(id)self1
{
  locationCopy = location;
  reasonCopy = reason;
  errorCopy = error;
  previousCopy = previous;
  nextCopy = next;
  activityCopy = activity;
  paramCopy = param;
  v37.receiver = self;
  v37.super_class = SUCoreDiagPoint;
  v19 = [(SUCoreDiagPoint *)&v37 init];
  v20 = v19;
  if (v19)
  {
    v19->_trackType = specified;
    objc_storeStrong(&v19->_location, location);
    objc_storeStrong(&v20->_reason, reason);
    v20->_code = code;
    if (errorCopy)
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      checkedDescription = [errorCopy checkedDescription];
      v23 = [v21 initWithFormat:@"%@", checkedDescription];
      errorDesc = v20->_errorDesc;
      v20->_errorDesc = v23;

      v20->_checkedLayer = [errorCopy checkedLayer];
      v20->_checkedCode = [errorCopy checkedCode];
      checkedDomain = [errorCopy checkedDomain];
      checkedDomain = v20->_checkedDomain;
      v20->_checkedDomain = checkedDomain;

      checkedIndications = [errorCopy checkedIndications];
    }

    else
    {
      v28 = v20->_errorDesc;
      v20->_errorDesc = 0;

      v20->_checkedLayer = 0;
      v20->_checkedCode = 0;
      v29 = v20->_checkedDomain;
      v20->_checkedDomain = 0;

      checkedIndications = 0;
    }

    v20->_checkedIndications = checkedIndications;
    objc_storeStrong(&v20->_previous, previous);
    objc_storeStrong(&v20->_next, next);
    objc_storeStrong(&v20->_activity, activity);
    objc_storeStrong(&v20->_param, param);
  }

  return v20;
}

- (SUCoreDiagPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SUCoreDiagPoint;
  v5 = [(SUCoreDiagPoint *)&v23 init];
  if (v5)
  {
    v5->_trackType = [coderCopy decodeInt64ForKey:@"trackType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v8;

    v5->_code = [coderCopy decodeInt64ForKey:@"code"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorDesc"];
    errorDesc = v5->_errorDesc;
    v5->_errorDesc = v10;

    v5->_checkedLayer = [coderCopy decodeInt64ForKey:@"checkedLayer"];
    v5->_checkedCode = [coderCopy decodeInt64ForKey:@"checkedCode"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"checkedDomain"];
    checkedDomain = v5->_checkedDomain;
    v5->_checkedDomain = v12;

    v5->_checkedIndications = [coderCopy decodeInt64ForKey:@"checkedIndications"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previous"];
    previous = v5->_previous;
    v5->_previous = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"next"];
    next = v5->_next;
    v5->_next = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activity"];
    activity = v5->_activity;
    v5->_activity = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"param"];
    param = v5->_param;
    v5->_param = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  trackType = self->_trackType;
  coderCopy = coder;
  [coderCopy encodeInt64:trackType forKey:@"trackType"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_reason forKey:@"reason"];
  [coderCopy encodeInt64:self->_code forKey:@"code"];
  [coderCopy encodeObject:self->_errorDesc forKey:@"errorDesc"];
  [coderCopy encodeInt64:self->_checkedLayer forKey:@"checkedLayer"];
  [coderCopy encodeInt64:self->_checkedCode forKey:@"checkedCode"];
  [coderCopy encodeObject:self->_checkedDomain forKey:@"checkedDomain"];
  [coderCopy encodeInt64:self->_checkedIndications forKey:@"checkedIndications"];
  [coderCopy encodeObject:self->_previous forKey:@"previous"];
  [coderCopy encodeObject:self->_next forKey:@"next"];
  [coderCopy encodeObject:self->_activity forKey:@"activity"];
  [coderCopy encodeObject:self->_param forKey:@"param"];
}

- (id)summary
{
  if (([(SUCoreDiagPoint *)self trackType]& 0x40) != 0)
  {
    [(SUCoreDiagPoint *)self _summaryStateEvent];
  }

  else
  {
    [(SUCoreDiagPoint *)self _summaryStandard];
  }
  v3 = ;

  return v3;
}

- (id)_summaryStateEvent
{
  v3 = MEMORY[0x1E696AEC0];
  typeName = [(SUCoreDiagPoint *)self typeName];
  location = [(SUCoreDiagPoint *)self location];
  previous = [(SUCoreDiagPoint *)self previous];
  reason = [(SUCoreDiagPoint *)self reason];
  next = [(SUCoreDiagPoint *)self next];
  activity = [(SUCoreDiagPoint *)self activity];
  param = [(SUCoreDiagPoint *)self param];
  v11 = [v3 stringWithFormat:@"trackType:%@ fsmName:%@ previousState:%@ fsmEvent:%@ nextState:%@ fsmAction:%@ eventInfo:%@", typeName, location, previous, reason, next, activity, param];

  return v11;
}

- (id)_descriptionStandard
{
  reason = [(SUCoreDiagPoint *)self reason];

  errorDesc = [(SUCoreDiagPoint *)self errorDesc];

  if (reason)
  {
    if (errorDesc)
    {
      if ([(SUCoreDiagPoint *)self checkedLayer])
      {
        checkedLayer = [(SUCoreDiagPoint *)self checkedLayer];
        v6 = MEMORY[0x1E696AEC0];
        typeName = [(SUCoreDiagPoint *)self typeName];
        location = [(SUCoreDiagPoint *)self location];
        reason2 = [(SUCoreDiagPoint *)self reason];
        code = [(SUCoreDiagPoint *)self code];
        errorDesc2 = [(SUCoreDiagPoint *)self errorDesc];
        if (checkedLayer > 10)
        {
          v34 = v6;
          v22 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
          checkedCode = [(SUCoreDiagPoint *)self checkedCode];
          checkedDomain = [(SUCoreDiagPoint *)self checkedDomain];
          v25 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagPoint *)self checkedIndications]];
          v12 = [v34 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@ | checked(%@) code:%ld domain:%@ indications:%@", typeName, location, reason2, code, errorDesc2, v22, checkedCode, checkedDomain, v25];
        }

        else
        {
          v12 = [v6 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@ | checked(%ld)", typeName, location, reason2, code, errorDesc2, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
        }

        goto LABEL_18;
      }

      v18 = MEMORY[0x1E696AEC0];
      typeName = [(SUCoreDiagPoint *)self typeName];
      location = [(SUCoreDiagPoint *)self location];
      reason3 = [(SUCoreDiagPoint *)self reason];
      code2 = [(SUCoreDiagPoint *)self code];
      errorDesc3 = [(SUCoreDiagPoint *)self errorDesc];
      v12 = [v18 stringWithFormat:@"[%@(%@) %@] code:%ld error:%@", typeName, location, reason3, code2, errorDesc3];
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      typeName = [(SUCoreDiagPoint *)self typeName];
      location = [(SUCoreDiagPoint *)self location];
      reason3 = [(SUCoreDiagPoint *)self reason];
      v12 = [v16 stringWithFormat:@"[%@(%@) %@] code:%ld", typeName, location, reason3, -[SUCoreDiagPoint code](self, "code")];
    }

    goto LABEL_19;
  }

  if (!errorDesc)
  {
    v21 = MEMORY[0x1E696AEC0];
    typeName = [(SUCoreDiagPoint *)self typeName];
    location = [(SUCoreDiagPoint *)self location];
    v12 = [v21 stringWithFormat:@"[%@(%@)] code:%ld", typeName, location, -[SUCoreDiagPoint code](self, "code")];
    goto LABEL_19;
  }

  if (![(SUCoreDiagPoint *)self checkedLayer])
  {
    v26 = MEMORY[0x1E696AEC0];
    typeName = [(SUCoreDiagPoint *)self typeName];
    location = [(SUCoreDiagPoint *)self location];
    code3 = [(SUCoreDiagPoint *)self code];
    errorDesc4 = [(SUCoreDiagPoint *)self errorDesc];
    v12 = [v26 stringWithFormat:@"[%@(%@)] code:%ld error:%@", typeName, location, code3, errorDesc4];

    goto LABEL_19;
  }

  checkedLayer2 = [(SUCoreDiagPoint *)self checkedLayer];
  v14 = MEMORY[0x1E696AEC0];
  typeName = [(SUCoreDiagPoint *)self typeName];
  location = [(SUCoreDiagPoint *)self location];
  code4 = [(SUCoreDiagPoint *)self code];
  reason2 = [(SUCoreDiagPoint *)self errorDesc];
  if (checkedLayer2 > 10)
  {
    v29 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
    checkedCode2 = [(SUCoreDiagPoint *)self checkedCode];
    checkedDomain2 = [(SUCoreDiagPoint *)self checkedDomain];
    v32 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagPoint *)self checkedIndications]];
    v12 = [v14 stringWithFormat:@"[%@(%@)] code:%ld error:%@ | checked(%@) code:%ld domain:%@ indications:%@", typeName, location, code4, reason2, v29, checkedCode2, checkedDomain2, v32];
  }

  else
  {
    v12 = [v14 stringWithFormat:@"[%@(%@)] code:%ld error:%@ | checked(%ld)", typeName, location, code4, reason2, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
  }

LABEL_18:

LABEL_19:

  return v12;
}

- (id)_summaryStandard
{
  errorDesc = [(SUCoreDiagPoint *)self errorDesc];

  if (errorDesc)
  {
    if ([(SUCoreDiagPoint *)self checkedLayer])
    {
      checkedLayer = [(SUCoreDiagPoint *)self checkedLayer];
      v5 = MEMORY[0x1E696AEC0];
      typeName = [(SUCoreDiagPoint *)self typeName];
      location = [(SUCoreDiagPoint *)self location];
      reason = [(SUCoreDiagPoint *)self reason];
      code = [(SUCoreDiagPoint *)self code];
      errorDesc2 = [(SUCoreDiagPoint *)self errorDesc];
      if (checkedLayer > 10)
      {
        v16 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreDiagPoint *)self checkedLayer]];
        checkedCode = [(SUCoreDiagPoint *)self checkedCode];
        checkedDomain = [(SUCoreDiagPoint *)self checkedDomain];
        v11 = [v5 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@ | checked(%@) code:%ld domain:%@", typeName, location, reason, code, errorDesc2, v16, checkedCode, checkedDomain];
      }

      else
      {
        v11 = [v5 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@ | checked(%ld)", typeName, location, reason, code, errorDesc2, -[SUCoreDiagPoint checkedLayer](self, "checkedLayer")];
      }
    }

    else
    {
      v13 = MEMORY[0x1E696AEC0];
      typeName = [(SUCoreDiagPoint *)self typeName];
      location = [(SUCoreDiagPoint *)self location];
      reason = [(SUCoreDiagPoint *)self reason];
      code2 = [(SUCoreDiagPoint *)self code];
      errorDesc3 = [(SUCoreDiagPoint *)self errorDesc];
      v11 = [v13 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld error:%@", typeName, location, reason, code2, errorDesc3];
    }
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    typeName = [(SUCoreDiagPoint *)self typeName];
    location = [(SUCoreDiagPoint *)self location];
    reason = [(SUCoreDiagPoint *)self reason];
    v11 = [v12 stringWithFormat:@"trackType:%@ location:%@ reason:%@ code:%ld", typeName, location, reason, -[SUCoreDiagPoint code](self, "code")];
  }

  return v11;
}

@end