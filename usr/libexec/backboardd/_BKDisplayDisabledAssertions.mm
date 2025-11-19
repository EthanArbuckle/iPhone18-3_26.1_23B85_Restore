@interface _BKDisplayDisabledAssertions
- (_BKDisplayDisabledAssertions)init;
@end

@implementation _BKDisplayDisabledAssertions

- (_BKDisplayDisabledAssertions)init
{
  v13.receiver = self;
  v13.super_class = _BKDisplayDisabledAssertions;
  v2 = [(_BKDisplayDisabledAssertions *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    lock_assertionsByVPID = v3->_lock_assertionsByVPID;
    v3->_lock_assertionsByVPID = v4;

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100028174;
    v11[4] = sub_100028184;
    v12 = +[NSSet set];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002818C;
    v10[3] = &unk_1000FA840;
    v10[4] = v11;
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"com.apple.backboardd.display-disabled" stateDidChangeHandler:v10];
    displayDisabledAssertion = v3->_displayDisabledAssertion;
    v3->_displayDisabledAssertion = v6;

    v8 = v3;
    _Block_object_dispose(v11, 8);
  }

  return v3;
}

@end