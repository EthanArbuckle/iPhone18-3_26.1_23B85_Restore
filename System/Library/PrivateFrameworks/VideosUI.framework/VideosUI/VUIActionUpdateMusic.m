@interface VUIActionUpdateMusic
- (VUIActionUpdateMusic)initWithContextData:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionUpdateMusic

- (VUIActionUpdateMusic)initWithContextData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIActionUpdateMusic;
  v5 = [(VUIActionUpdateMusic *)&v9 init];
  if (v5)
  {
    v6 = [v4 vui_stringForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v5->_isExplicit = [v4 vui_BOOLForKey:@"isExplicit" defaultValue:0];
  }

  return v5;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VUIActionUpdateMusic *)self itemID];
    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIActionUpdateMusic::(%p) perform action, itemId: %@", &v10, 0x16u);
  }

  v8 = +[VUIInterfaceFactory sharedInstance];
  v9 = [v8 musicManager];
  [v9 addSongToMusicWithSongId:self->_itemID isExplicit:self->_isExplicit];

  v5[2](v5, 1);
}

@end