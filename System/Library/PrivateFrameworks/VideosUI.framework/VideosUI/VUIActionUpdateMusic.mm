@interface VUIActionUpdateMusic
- (VUIActionUpdateMusic)initWithContextData:(id)data;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionUpdateMusic

- (VUIActionUpdateMusic)initWithContextData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = VUIActionUpdateMusic;
  v5 = [(VUIActionUpdateMusic *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy vui_stringForKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v6;

    v5->_isExplicit = [dataCopy vui_BOOLForKey:@"isExplicit" defaultValue:0];
  }

  return v5;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    itemID = [(VUIActionUpdateMusic *)self itemID];
    v10 = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = itemID;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIActionUpdateMusic::(%p) perform action, itemId: %@", &v10, 0x16u);
  }

  v8 = +[VUIInterfaceFactory sharedInstance];
  musicManager = [v8 musicManager];
  [musicManager addSongToMusicWithSongId:self->_itemID isExplicit:self->_isExplicit];

  handlerCopy[2](handlerCopy, 1);
}

@end