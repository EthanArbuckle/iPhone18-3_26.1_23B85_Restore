@interface _UIDICActionActivity
+ (id)newLegacyDelegationActionActivityForCopy;
+ (id)newLegacyDelegationActionActivityForPrint;
+ (id)newLegacyDelegationActionActivityForSaveToCameraRoll;
+ (id)newPreviewActionActivity;
- (_UIDICActionActivity)initWithActivityType:(id)a3 activityImageName:(id)a4 localizedTitle:(id)a5;
- (id)description;
- (void)_cleanup;
- (void)performActivity;
@end

@implementation _UIDICActionActivity

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIDICActionActivity;
  v4 = [(UIActivity *)&v8 description];
  v5 = [(_UIDICActionActivity *)self activityTitle];
  v6 = [v3 stringWithFormat:@"%@ '%@'", v4, v5];

  return v6;
}

+ (id)newPreviewActionActivity
{
  v2 = [_UIDICActionActivity alloc];
  v3 = _ShareSheetBundle();
  v4 = [v3 localizedStringForKey:@"Quick Look" value:@"Quick Look" table:@"Localizable"];
  v5 = [(_UIDICActionActivity *)v2 initWithActivityType:@"com.apple.UIKit.activity.Quicklook" activityImageName:@"eye" localizedTitle:v4];

  return v5;
}

+ (id)newLegacyDelegationActionActivityForPrint
{
  v2 = [_UIDICActionActivity alloc];
  v3 = _ShareSheetBundle();
  v4 = [v3 localizedStringForKey:@"Print[Activity]" value:@"Print" table:@"Localizable"];
  v5 = [(_UIDICActionActivity *)v2 initWithActivityType:@"com.apple.UIKit.activity.DelegatingPrint" activityImageName:@"printer" localizedTitle:v4];

  return v5;
}

+ (id)newLegacyDelegationActionActivityForCopy
{
  v2 = [_UIDICActionActivity alloc];
  v3 = _ShareSheetBundle();
  v4 = [v3 localizedStringForKey:@"Copy[Activity]" value:@"Copy" table:@"Localizable"];
  v5 = [(_UIDICActionActivity *)v2 initWithActivityType:@"com.apple.UIKit.activity.DelegatingCopy" activityImageName:@"doc.on.doc" localizedTitle:v4];

  return v5;
}

+ (id)newLegacyDelegationActionActivityForSaveToCameraRoll
{
  v2 = [_UIDICActionActivity alloc];
  v3 = _ShareSheetBundle();
  v4 = [v3 localizedStringForKey:@"Save to Camera Roll[Activity]" value:@"Save to Camera Roll" table:@"Localizable"];
  v5 = [(_UIDICActionActivity *)v2 initWithActivityType:@"com.apple.UIKit.activity.DelegatingSaveToCameraRoll" activityImageName:@"square.and.arrow.down" localizedTitle:v4];

  return v5;
}

- (_UIDICActionActivity)initWithActivityType:(id)a3 activityImageName:(id)a4 localizedTitle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIDICActionActivity;
  v12 = [(UIActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionActivityType, a3);
    objc_storeStrong(&v13->_activityImageName, a4);
    objc_storeStrong(&v13->_localizedTitle, a5);
  }

  return v13;
}

- (void)performActivity
{
  activityPerformingHandler = self->_activityPerformingHandler;
  if (activityPerformingHandler)
  {
    v4 = activityPerformingHandler[2](activityPerformingHandler, self);
    v5 = self->_activityPerformingHandler;
    self->_activityPerformingHandler = 0;
  }

  else
  {
    v4 = 1;
  }

  [(UIActivity *)self activityDidFinish:v4];
}

- (void)_cleanup
{
  v5.receiver = self;
  v5.super_class = _UIDICActionActivity;
  [(UIActivity *)&v5 _cleanup];
  activityFinishedPerformingHandler = self->_activityFinishedPerformingHandler;
  if (activityFinishedPerformingHandler)
  {
    activityFinishedPerformingHandler[2](activityFinishedPerformingHandler, self);
    v4 = self->_activityFinishedPerformingHandler;
    self->_activityFinishedPerformingHandler = 0;
  }
}

@end