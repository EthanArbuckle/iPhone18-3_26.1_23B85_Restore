@interface PUSlideshowSpeedCell
- (PUSlideshowSpeedCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (PUSlideshowSpeedCellDelegate)delegate;
- (void)_stepDurationValueChanged:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation PUSlideshowSpeedCell

- (PUSlideshowSpeedCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(PUSlideshowSpeedCell *)self _updateView];
  }
}

- (void)_stepDurationValueChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [(PUSlideshowSpeedCell *)self stepDuration];
    [v6 PUSlideshowSpeedCell:self stepDurationDidChange:?];
  }
}

- (PUSlideshowSpeedCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v24.receiver = self;
  v24.super_class = PUSlideshowSpeedCell;
  v4 = [(PUSlideshowSpeedCell *)&v24 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    [(PUSlideshowSpeedCell *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUSlideshowSpeedCell *)v5 setSelectionStyle:0];
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"hare.fill"];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v7 setTintColor:v8];

    [(UIImageView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(PUSlideshowSpeedCell *)v5 contentView];
    [v9 addSubview:v7];

    fasterGlyphImageView = v5->_fasterGlyphImageView;
    v5->_fasterGlyphImageView = v7;
    v11 = v7;

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"tortoise.fill"];
    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
    [(UIImageView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v13 setTintColor:v14];

    v15 = [(PUSlideshowSpeedCell *)v5 contentView];
    [v15 addSubview:v13];

    slowerGlyphImageView = v5->_slowerGlyphImageView;
    v5->_slowerGlyphImageView = v13;
    v17 = v13;

    v18 = objc_alloc_init(MEMORY[0x1E69DCF60]);
    [(UISlider *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 2.0;
    [(UISlider *)v18 setMinimumValue:v19];
    LODWORD(v20) = 10.0;
    [(UISlider *)v18 setMaximumValue:v20];
    [(UISlider *)v18 setContinuous:0];
    [(UISlider *)v18 addTarget:v5 action:sel__stepDurationValueChanged_ forControlEvents:4096];
    v21 = [(PUSlideshowSpeedCell *)v5 contentView];
    [v21 addSubview:v18];

    slider = v5->_slider;
    v5->_slider = v18;
  }

  return v5;
}

- (void)updateConstraints
{
  if (self->_slider)
  {
    slowerGlyphImageView = self->_slowerGlyphImageView;
    if (slowerGlyphImageView)
    {
      fasterGlyphImageView = self->_fasterGlyphImageView;
      if (fasterGlyphImageView)
      {
        if (!self->_speedConstraints)
        {
          v5 = _NSDictionaryOfVariableBindings(&cfstr_Slowerglyphima.isa, slowerGlyphImageView, fasterGlyphImageView, self->_slider, 0);
          v6 = [MEMORY[0x1E695DF70] array];
          v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[_slowerGlyphImageView]-[_slider]-[_fasterGlyphImageView]-|" options:0 metrics:0 views:v5];
          [(NSArray *)v6 addObjectsFromArray:v7];

          v8 = MEMORY[0x1E696ACD8];
          slider = self->_slider;
          v10 = [(PUSlideshowSpeedCell *)self contentView];
          v11 = [v8 constraintWithItem:slider attribute:10 relatedBy:0 toItem:v10 attribute:10 multiplier:1.0 constant:0.0];
          [(NSArray *)v6 addObject:v11];

          v12 = MEMORY[0x1E696ACD8];
          v13 = self->_slowerGlyphImageView;
          v14 = [(PUSlideshowSpeedCell *)self contentView];
          v15 = [v12 constraintWithItem:v13 attribute:10 relatedBy:0 toItem:v14 attribute:10 multiplier:1.0 constant:0.0];
          [(NSArray *)v6 addObject:v15];

          v16 = MEMORY[0x1E696ACD8];
          v17 = self->_fasterGlyphImageView;
          v18 = [(PUSlideshowSpeedCell *)self contentView];
          v19 = [v16 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v18 attribute:10 multiplier:1.0 constant:0.0];
          [(NSArray *)v6 addObject:v19];

          [MEMORY[0x1E696ACD8] activateConstraints:v6];
          speedConstraints = self->_speedConstraints;
          self->_speedConstraints = v6;
        }
      }
    }
  }

  v21.receiver = self;
  v21.super_class = PUSlideshowSpeedCell;
  [(PUSlideshowSpeedCell *)&v21 updateConstraints];
}

@end