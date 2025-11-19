@interface CTSCalendarInterval
- (CTSCalendarInterval)initWithToken:(unint64_t)a3 andEvent:(id)a4;
- (void)parseComponent:(unint64_t)a3 inEvent:(id)a4;
- (void)resetFireDate;
- (void)setEveryMinuteIfNothingElseSet;
@end

@implementation CTSCalendarInterval

- (void)parseComponent:(unint64_t)a3 inEvent:(id)a4
{
  v6 = &unk_109E8 + 24 * a3;
  v7 = *v6;
  v8 = xpc_dictionary_get_value(a4, *v6);
  v9 = v8;
  if (v8 && xpc_get_type(v8) == &_xpc_type_int64)
  {
    value = xpc_int64_get_value(v9);
    v11 = *(v6 + 1);
    if (value >= v11 && (v12 = value, value <= *(v6 + 2)))
    {
      if (a3 == 512)
      {
        v12 = value % 7 + 1;
        [(NSDateComponents *)self->_components setDay:0x7FFFFFFFFFFFFFFFLL];
        [(NSDateComponents *)self->_components setMonth:0x7FFFFFFFFFFFFFFFLL];
      }

      [(NSDateComponents *)self->_components setValue:v12 forComponent:a3];
      if (![(NSDateComponents *)self->_components isValidDate])
      {
        v15 = [(NSDateComponents *)self->_components month];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = (v15 + 1) % 12;
          [(NSDateComponents *)self->_components setDay:1];
          [(NSDateComponents *)self->_components setMonth:v16 + 1];
        }
      }
    }

    else
    {
      v13 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v6 + 2);
        v17 = 136315650;
        v18 = v7;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "The interval for key %s is not between %d and %d (inclusive).", &v17, 0x18u);
      }
    }
  }
}

- (void)setEveryMinuteIfNothingElseSet
{
  if ([(NSDateComponents *)self->_components minute]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_components hour]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_components day]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_components month]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_components weekday]== 0x7FFFFFFFFFFFFFFFLL)
  {
    components = self->_components;

    [(NSDateComponents *)components setSecond:0];
  }
}

- (void)resetFireDate
{
  v6 = [(NSDateComponents *)self->_components calendar];
  v3 = +[NSDate date];
  v4 = [v6 nextDateAfterDate:v3 matchingComponents:self->_components options:1024];
  fireDate = self->_fireDate;
  self->_fireDate = v4;
}

- (CTSCalendarInterval)initWithToken:(unint64_t)a3 andEvent:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = CTSCalendarInterval;
  v7 = [(CTSCalendarInterval *)&v14 init];
  if (v7)
  {
    memset(v15, 0, sizeof(v15));
    if ((xpc_get_event_name() & 1) == 0)
    {
      __strlcpy_chk();
    }

    v8 = [NSString stringWithUTF8String:v15];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_token = a3;
    v10 = objc_opt_new();
    components = v7->_components;
    v7->_components = v10;

    v12 = v7->_components;
    if (qword_15490 != -1)
    {
      sub_8BBC();
    }

    [(NSDateComponents *)v12 setCalendar:qword_15488];
    [(CTSCalendarInterval *)v7 parseComponent:64 inEvent:v6];
    [(CTSCalendarInterval *)v7 parseComponent:32 inEvent:v6];
    [(CTSCalendarInterval *)v7 parseComponent:16 inEvent:v6];
    [(CTSCalendarInterval *)v7 parseComponent:8 inEvent:v6];
    [(CTSCalendarInterval *)v7 parseComponent:512 inEvent:v6];
    [(CTSCalendarInterval *)v7 setEveryMinuteIfNothingElseSet];
    [(CTSCalendarInterval *)v7 resetFireDate];
  }

  return v7;
}

@end