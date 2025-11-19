@interface RMLog
+ (id)accountAdapter;
+ (id)accountApplicator;
+ (id)accountStatus;
+ (id)accountStatusAdapter;
+ (id)accountStatusHandler;
+ (id)accountStatusHandlerCalDAV;
+ (id)accountStatusHandlerCardDAV;
+ (id)accountStatusHandlerExchange;
+ (id)accountStatusHandlerGoogle;
+ (id)accountStatusHandlerLDAP;
+ (id)accountStatusHandlerMail;
+ (id)accountStatusHandlerSubscribedCalendar;
+ (id)accountTransformer;
+ (id)accountTransformerCalDAV;
+ (id)accountTransformerCardDAV;
+ (id)accountTransformerExchange;
+ (id)accountTransformerGoogle;
+ (id)accountTransformerLDAP;
+ (id)accountTransformerMail;
+ (id)accountTransformerSubscribedCalendar;
@end

@implementation RMLog

+ (id)accountAdapter
{
  if (qword_100022000 != -1)
  {
    sub_100012804();
  }

  v3 = qword_100021FF8;

  return v3;
}

+ (id)accountApplicator
{
  if (qword_100022010 != -1)
  {
    sub_100012A70();
  }

  v3 = qword_100022008;

  return v3;
}

+ (id)accountStatus
{
  if (qword_100022020 != -1)
  {
    sub_10001307C();
  }

  v3 = qword_100022018;

  return v3;
}

+ (id)accountStatusAdapter
{
  if (qword_100022030 != -1)
  {
    sub_100013108();
  }

  v3 = qword_100022028;

  return v3;
}

+ (id)accountStatusHandler
{
  if (qword_100022040 != -1)
  {
    sub_100013268();
  }

  v3 = qword_100022038;

  return v3;
}

+ (id)accountStatusHandlerCalDAV
{
  if (qword_100022060 != -1)
  {
    sub_100013290();
  }

  v3 = qword_100022058;

  return v3;
}

+ (id)accountStatusHandlerCardDAV
{
  if (qword_100022070 != -1)
  {
    sub_1000132A4();
  }

  v3 = qword_100022068;

  return v3;
}

+ (id)accountStatusHandlerExchange
{
  if (qword_100022080 != -1)
  {
    sub_1000132B8();
  }

  v3 = qword_100022078;

  return v3;
}

+ (id)accountStatusHandlerGoogle
{
  if (qword_100022090 != -1)
  {
    sub_1000132CC();
  }

  v3 = qword_100022088;

  return v3;
}

+ (id)accountStatusHandlerLDAP
{
  if (qword_1000220A0 != -1)
  {
    sub_1000132E0();
  }

  v3 = qword_100022098;

  return v3;
}

+ (id)accountStatusHandlerMail
{
  if (qword_1000220B0 != -1)
  {
    sub_1000132F4();
  }

  v3 = qword_1000220A8;

  return v3;
}

+ (id)accountStatusHandlerSubscribedCalendar
{
  if (qword_1000220C0 != -1)
  {
    sub_100013308();
  }

  v3 = qword_1000220B8;

  return v3;
}

+ (id)accountTransformer
{
  if (qword_1000220D0 != -1)
  {
    sub_10001331C();
  }

  v3 = qword_1000220C8;

  return v3;
}

+ (id)accountTransformerCalDAV
{
  if (qword_1000220F0 != -1)
  {
    sub_1000134C8();
  }

  v3 = qword_1000220E8;

  return v3;
}

+ (id)accountTransformerCardDAV
{
  if (qword_100022100 != -1)
  {
    sub_100013554();
  }

  v3 = qword_1000220F8;

  return v3;
}

+ (id)accountTransformerExchange
{
  if (qword_100022110 != -1)
  {
    sub_100013568();
  }

  v3 = qword_100022108;

  return v3;
}

+ (id)accountTransformerGoogle
{
  if (qword_100022120 != -1)
  {
    sub_1000135C0();
  }

  v3 = qword_100022118;

  return v3;
}

+ (id)accountTransformerLDAP
{
  if (qword_100022130 != -1)
  {
    sub_10001364C();
  }

  v3 = qword_100022128;

  return v3;
}

+ (id)accountTransformerMail
{
  if (qword_100022140 != -1)
  {
    sub_100013660();
  }

  v3 = qword_100022138;

  return v3;
}

+ (id)accountTransformerSubscribedCalendar
{
  if (qword_100022150 != -1)
  {
    sub_100013AC0();
  }

  v3 = qword_100022148;

  return v3;
}

@end