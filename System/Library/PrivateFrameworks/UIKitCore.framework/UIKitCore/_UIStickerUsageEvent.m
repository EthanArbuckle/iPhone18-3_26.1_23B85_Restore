@interface _UIStickerUsageEvent
+ (BOOL)isPreferredRepresentationAnimated:(id)a3;
+ (int64_t)effectTypeForSticker:(id)a3;
+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)a3;
- (_UIStickerUsageEvent)initWithSuggestedSticker:(id)a3;
- (id)initForEmojiKeyboardUsage;
- (void)send;
@end

@implementation _UIStickerUsageEvent

+ (int64_t)effectTypeFromVKCStickerEffectType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_18A682BC8[a3 - 1];
  }
}

+ (BOOL)isPreferredRepresentationAnimated:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 role];
    v6 = [v5 isEqualToString:@"com.apple.stickers.role.animated"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)effectTypeForSticker:(id)a3
{
  v3 = a3;
  v4 = [v3 representations];
  v5 = [_UIStickerUsageEvent isPreferredRepresentationAnimated:v4];

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = +[_UIStickerUsageEvent effectTypeFromVKCStickerEffectType:](_UIStickerUsageEvent, "effectTypeFromVKCStickerEffectType:", [v3 effectType]);
  }

  return v6;
}

- (_UIStickerUsageEvent)initWithSuggestedSticker:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIStickerUsageEvent;
  v5 = [(_UIStickerUsageEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIStickerUsageEvent *)v5 setStickerType:0];
    [(_UIStickerUsageEvent *)v6 setSourceType:2];
    [(_UIStickerUsageEvent *)v6 setEffectType:[_UIStickerUsageEvent effectTypeForSticker:v4]];
  }

  return v6;
}

- (id)initForEmojiKeyboardUsage
{
  v6.receiver = self;
  v6.super_class = _UIStickerUsageEvent;
  v2 = [(_UIStickerUsageEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_UIStickerUsageEvent *)v2 setEffectType:0];
    [(_UIStickerUsageEvent *)v3 setStickerType:2];
    if (_UIApplicationIsFirstPartyStickers())
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    [(_UIStickerUsageEvent *)v3 setSourceType:v4];
  }

  return v3;
}

- (void)send
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"usageSource";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStickerUsageEvent sourceType](self, "sourceType")}];
  v9[0] = v3;
  v8[1] = @"stickerType";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStickerUsageEvent stickerType](self, "stickerType")}];
  v9[1] = v4;
  v8[2] = @"usageType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStickerUsageEvent usageType](self, "usageType")}];
  v9[2] = v5;
  v8[3] = @"effectType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStickerUsageEvent effectType](self, "effectType")}];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  AnalyticsSendEvent();
}

@end