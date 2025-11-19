@interface PXCMMTranscriptTextView
- (CGSize)_performLayoutInSize:(CGSize)a3 minimizingSize:(BOOL)a4 updateSubviewFrames:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCMMTranscriptTextView)initWithCoder:(id)a3;
- (PXCMMTranscriptTextView)initWithFrame:(CGRect)a3;
- (void)_updatePrimaryLabel;
- (void)_updateSecondaryLabel;
- (void)layoutSubviews;
- (void)setPrimaryText:(id)a3;
- (void)setSecondaryText:(id)a3;
@end

@implementation PXCMMTranscriptTextView

- (void)_updateSecondaryLabel
{
  v3 = [(PXCMMTranscriptTextView *)self secondaryText];
  v4 = [v3 length];

  secondaryLabel = self->_secondaryLabel;
  if (v4)
  {
    if (!secondaryLabel)
    {
      v6 = objc_alloc(MEMORY[0x1E69DCC10]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v8 = self->_secondaryLabel;
      self->_secondaryLabel = v7;

      PXFontWithTextStyleSymbolicTraits();
    }

    v10 = [(PXCMMTranscriptTextView *)self secondaryText];
    [(UILabel *)self->_secondaryLabel setText:v10];
    v9 = v10;
  }

  else
  {
    [(UILabel *)secondaryLabel removeFromSuperview];
    v9 = self->_secondaryLabel;
    self->_secondaryLabel = 0;
  }
}

- (void)_updatePrimaryLabel
{
  if (!self->_primaryLabel)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v4;

    PXFontWithTextStyleSymbolicTraits();
  }

  v6 = [(PXCMMTranscriptTextView *)self primaryText];
  [(UILabel *)self->_primaryLabel setText:v6];
}

- (CGSize)_performLayoutInSize:(CGSize)a3 minimizingSize:(BOOL)a4 updateSubviewFrames:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  width = a3.width;
  [(PXUpdater *)self->_updater updateIfNeeded];
  primaryLabel = self->_primaryLabel;
  if (!primaryLabel)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptTextView.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"_primaryLabel"}];

    primaryLabel = self->_primaryLabel;
  }

  [(UILabel *)primaryLabel sizeThatFits:width, height];
  v14 = v13;
  v15 = v12;
  if (v6)
  {
    PXSizeClampToSize();
  }

  [(UILabel *)self->_secondaryLabel sizeThatFits:width, height - v12 + -5.0];
  v17 = v16;
  v19 = v18;
  if (self->_secondaryLabel)
  {
    v20 = 0.0;
    v21 = v15 + 0.0 + 5.0;
  }

  else
  {
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v14;
  v32.size.height = v15;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v20;
  v33.origin.y = v21;
  v33.size.width = v17;
  v33.size.height = v19;
  v23 = fmax(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v14;
  v34.size.height = v15;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = v20;
  v35.origin.y = v21;
  v35.size.width = v17;
  v35.size.height = v19;
  v24 = CGRectGetMaxY(v35);
  v25 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[PXCMMTranscriptTextView semanticContentAttribute](self, "semanticContentAttribute")}];
  if (v5)
  {
    v26 = v23 - v14;
    if (v25 == 1)
    {
      v20 = v23 - v17;
    }

    else
    {
      v26 = 0.0;
    }

    [(UILabel *)self->_primaryLabel setFrame:v26, 0.0, v14, v15];
    [(UILabel *)self->_secondaryLabel setFrame:v20, v21, v17, v19];
  }

  v27 = fmax(MaxY, v24);
  v28 = v23;
  result.height = v27;
  result.width = v28;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXCMMTranscriptTextView;
  [(PXCMMTranscriptTextView *)&v5 layoutSubviews];
  [(PXCMMTranscriptTextView *)self bounds];
  [(PXCMMTranscriptTextView *)self _performLayoutInSize:1 minimizingSize:1 updateSubviewFrames:v3, v4];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXCMMTranscriptTextView *)self _performLayoutInSize:0 minimizingSize:0 updateSubviewFrames:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSecondaryText:(id)a3
{
  v4 = a3;
  secondaryText = self->_secondaryText;
  if (secondaryText != v4)
  {
    v9 = v4;
    v6 = [(NSString *)secondaryText isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_secondaryText;
      self->_secondaryText = v7;

      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateSecondaryLabel];
      v4 = v9;
    }
  }
}

- (void)setPrimaryText:(id)a3
{
  v4 = a3;
  primaryText = self->_primaryText;
  if (primaryText != v4)
  {
    v9 = v4;
    v6 = [(NSString *)primaryText isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_primaryText;
      self->_primaryText = v7;

      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updatePrimaryLabel];
      v4 = v9;
    }
  }
}

- (PXCMMTranscriptTextView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXCMMTranscriptTextView;
  v3 = [(PXCMMTranscriptTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[off_1E7721940 alloc] initWithTarget:v3 needsUpdateSelector:sel_setNeedsLayout];
    updater = v3->_updater;
    v3->_updater = v4;

    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updatePrimaryLabel needsUpdate:1];
    [(PXUpdater *)v3->_updater addUpdateSelector:sel__updateSecondaryLabel needsUpdate:0];
  }

  return v3;
}

- (PXCMMTranscriptTextView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMTranscriptTextView.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXCMMTranscriptTextView initWithCoder:]"}];

  abort();
}

@end