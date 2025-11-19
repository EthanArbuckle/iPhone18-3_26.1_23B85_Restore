@interface RespiratoryHealthHeroView
- (CGSize)intrinsicContentSize;
- (RespiratoryHealthHeroView)init;
- (double)validScaleFactorForCandidate:(double)result;
- (void)_updateHeroUIWithScaleFactor:(double)a3;
- (void)setPreferredWidth:(double)a3;
@end

@implementation RespiratoryHealthHeroView

- (RespiratoryHealthHeroView)init
{
  v46.receiver = self;
  v46.super_class = RespiratoryHealthHeroView;
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  v6 = [(RespiratoryHealthHeroView *)&v46 initWithFrame:*MEMORY[0x277CBF3A0], v3, v4, v5];
  if (v6)
  {
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:@"setup-watch" inBundle:v8 withConfiguration:0];

    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
    [(UIImageView *)v10 frame];
    v6->_watchImageMediumFrame.origin.x = v11;
    v6->_watchImageMediumFrame.origin.y = v12;
    v6->_watchImageMediumFrame.size.width = v13;
    v6->_watchImageMediumFrame.size.height = v14;
    watchImageView = v6->_watchImageView;
    v6->_watchImageView = v10;
    v16 = v10;

    v17 = MEMORY[0x277D755B8];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v17 imageNamed:@"setup-hero" inBundle:v18 withConfiguration:0];

    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v19];
    v6->_heroImageMediumFrame.origin = xmmword_26209E770;
    v6->_heroImageMediumFrame.size = xmmword_26209E780;
    heroImageView = v6->_heroImageView;
    v6->_heroImageView = v20;
    v22 = v20;

    [(UIImageView *)v22 setFrame:v6->_heroImageMediumFrame.origin.x, v6->_heroImageMediumFrame.origin.y, v6->_heroImageMediumFrame.size.width, v6->_heroImageMediumFrame.size.height];
    v23 = [[RespiratoryHealthHeroCountdownLabel alloc] initWithFrame:v2, v3, v4, v5];
    countdownLabel = v6->_countdownLabel;
    v6->_countdownLabel = v23;
    v25 = v23;

    [(UIImageView *)v22 frame];
    [(RespiratoryHealthHeroCountdownLabel *)v25 sizeThatFits:v26, v27];
    v29 = v28;
    v31 = v30;
    [(UIImageView *)v22 frame];
    v33 = v32;
    [(UIImageView *)v22 frame];
    v35 = v33 + v34 - v31;
    [(UIImageView *)v22 frame];
    [(RespiratoryHealthHeroCountdownLabel *)v25 setFrame:v36 + 4.0, v35, v29, v31];
    [(RespiratoryHealthHeroCountdownLabel *)v25 frame];
    v6->_countdownLabelMediumFrame.origin.x = v37;
    v6->_countdownLabelMediumFrame.origin.y = v38;
    v6->_countdownLabelMediumFrame.size.width = v39;
    v6->_countdownLabelMediumFrame.size.height = v40;
    [(RespiratoryHealthHeroView *)v6 addSubview:v16];
    [(RespiratoryHealthHeroView *)v6 addSubview:v22];

    [(RespiratoryHealthHeroView *)v6 addSubview:v25];
    [(UIImageView *)v16 frame];
    [(RespiratoryHealthHeroView *)v6 setFrame:?];
    [(UIImageView *)v16 frame];
    v42 = v41;
    v44 = v43;

    v6->_watchImageSize.width = v42;
    v6->_watchImageSize.height = v44;
    v6->_preferredWidth = v42;
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  width = self->_watchImageSize.width;
  height = self->_watchImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)validScaleFactorForCandidate:(double)result
{
  if (result > 3.0 || result < 0.75)
  {
    return 1.0;
  }

  return result;
}

- (void)setPreferredWidth:(double)a3
{
  self->_preferredWidth = a3;
  [(RespiratoryHealthHeroView *)self validScaleFactorForCandidate:a3 / self->_watchImageMediumFrame.size.width];

  [(RespiratoryHealthHeroView *)self _updateHeroUIWithScaleFactor:?];
}

- (void)_updateHeroUIWithScaleFactor:(double)a3
{
  if (a3 == 1.0)
  {
    [(UIImageView *)self->_heroImageView setFrame:self->_heroImageMediumFrame.origin.x, self->_heroImageMediumFrame.origin.y, self->_heroImageMediumFrame.size.width, self->_heroImageMediumFrame.size.height];
    [(UIImageView *)self->_watchImageView setFrame:self->_watchImageMediumFrame.origin.x, self->_watchImageMediumFrame.origin.y, self->_watchImageMediumFrame.size.width, self->_watchImageMediumFrame.size.height];
    [(RespiratoryHealthHeroCountdownLabel *)self->_countdownLabel setFrame:self->_countdownLabelMediumFrame.origin.x, self->_countdownLabelMediumFrame.origin.y, self->_countdownLabelMediumFrame.size.width, self->_countdownLabelMediumFrame.size.height];
    self->_watchImageSize = self->_watchImageMediumFrame.size;
  }

  else
  {
    width = self->_watchImageMediumFrame.size.width;
    v6 = width * a3;
    v7 = self->_watchImageMediumFrame.size.height * a3;
    v8 = -(width - width * a3) * 0.5;
    [(UIImageView *)self->_watchImageView setFrame:self->_watchImageMediumFrame.origin.x, self->_watchImageMediumFrame.origin.y, width * a3, v7];
    v9 = self->_heroImageMediumFrame.size.width;
    v10 = self->_heroImageMediumFrame.origin.x + v8 - -(v9 - v9 * a3) * 0.5;
    v11 = (a3 + -1.0) * 8.0 + self->_heroImageMediumFrame.origin.y * a3;
    v12 = self->_heroImageMediumFrame.size.height * a3;
    [(UIImageView *)self->_heroImageView setFrame:v10, v11, v9 * a3, v12];
    [(RespiratoryHealthHeroCountdownLabel *)self->_countdownLabel setFrame:v10 + 4.0, v11 + v12 - self->_countdownLabelMediumFrame.size.height * a3, self->_countdownLabelMediumFrame.size.width * a3];
    self->_watchImageSize.width = v6;
    self->_watchImageSize.height = v7;
  }

  [(RespiratoryHealthHeroCountdownLabel *)self->_countdownLabel setScaleFactor:a3];
  [(RespiratoryHealthHeroView *)self frame];
  v13 = self->_watchImageSize.width;
  height = self->_watchImageSize.height;

  [(RespiratoryHealthHeroView *)self setFrame:?];
}

@end