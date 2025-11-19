@interface TVRUICaptionsButton
- (TVRUICaptionsButton)initWithCaptionsEnabled:(BOOL)a3 buttonLocation:(int64_t)a4;
- (id)description;
- (void)_boldTextEnabledStatusChanged:(id)a3;
- (void)_largeTextEnabledStatusChanged:(id)a3;
- (void)setCaptionsEnabled:(BOOL)a3;
@end

@implementation TVRUICaptionsButton

- (TVRUICaptionsButton)initWithCaptionsEnabled:(BOOL)a3 buttonLocation:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = TVRUICaptionsButton;
  v5 = [(TVRUIButton *)&v11 initWithType:16 hasTapAction:1 buttonLocation:1 options:2];
  v6 = v5;
  if (v5)
  {
    v5->_captionsEnabled = a3;
    v7 = [(TVRUIButton *)v5 styleProvider];
    v8 = [v7 captionsButtonIcon:v6->_captionsEnabled];
    v9 = [(TVRUIButton *)v6 imageView];
    [v9 setImage:v8];
  }

  return v6;
}

- (void)setCaptionsEnabled:(BOOL)a3
{
  if (self->_captionsEnabled != a3)
  {
    self->_captionsEnabled = a3;
    v6 = [(TVRUIButton *)self styleProvider];
    v4 = [v6 captionsButtonIcon:self->_captionsEnabled];
    v5 = [(TVRUIButton *)self imageView];
    [v5 setImage:v4];
  }
}

- (id)description
{
  v3 = [(TVRUIButton *)self _descriptionBuilder];
  v4 = [v3 appendBool:-[TVRUICaptionsButton captionsEnabled](self withName:{"captionsEnabled"), @"captionsEnabled"}];
  v5 = [v3 build];

  return v5;
}

- (void)_boldTextEnabledStatusChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TVRUICaptionsButton;
  [(TVRUIButton *)&v8 _boldTextEnabledStatusChanged:a3];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TVRUICaptionsButton _boldTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(TVRUIButton *)self styleProvider];
  v6 = [v5 captionsButtonIcon:{-[TVRUICaptionsButton captionsEnabled](self, "captionsEnabled")}];
  v7 = [(TVRUIButton *)self imageView];
  [v7 setImage:v6];
}

- (void)_largeTextEnabledStatusChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TVRUICaptionsButton;
  [(TVRUIButton *)&v8 _largeTextEnabledStatusChanged:a3];
  v4 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TVRUICaptionsButton _largeTextEnabledStatusChanged:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [(TVRUIButton *)self styleProvider];
  v6 = [v5 captionsButtonIcon:{-[TVRUICaptionsButton captionsEnabled](self, "captionsEnabled")}];
  v7 = [(TVRUIButton *)self imageView];
  [v7 setImage:v6];
}

@end