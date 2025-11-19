@interface PBPasteButtonDrawer
- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
@end

@implementation PBPasteButtonDrawer

- (id)drawingWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10001D98C;
  v21[3] = &unk_100031DC8;
  v22 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001D9F4;
  v19[3] = &unk_100031DF0;
  v20 = v22;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001DA5C;
  v17[3] = &unk_100031E18;
  v18 = v20;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001DAC4;
  v15[3] = &unk_100031E40;
  v16 = v18;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DB2C;
  v13[3] = &unk_100031E68;
  v14 = v16;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001DB9C;
  v11[3] = &unk_100031E90;
  v12 = v14;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001DC04;
  v9[3] = &unk_100031EB8;
  v10 = v12;
  v6 = v12;
  v7 = [a4 _acceptCalloutBarPasteButtonTagVisit:v21 systemInputAssistantPasteButtonTagVisit:v19 undoInteractionHUDIconPasteButtonTagVisit:v17 undoInteractionHUDTextPasteButtonTagVisit:v15 contextMenuPasteButtonTagVisit:v13 contextMenuDynamicPasteButtonTagVisit:v11 editMenuPasteButtonTagVisit:v9];

  return v7;
}

@end