@interface UISlidingBarConfiguration
- (BOOL)isEqual:(id)a3;
- (UISlidingBarConfiguration)init;
- (double)leadingBorderWidthForScale:(double)a3;
- (double)trailingBorderWidthForScale:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_setLeadingBorderWidthIsInPixels:(BOOL)a3;
- (void)_setSupplementaryAdoptsPrimaryBackgroundStyle:(BOOL)a3;
- (void)_setTrailingBorderWidthIsInPixels:(BOOL)a3;
- (void)setAllowMixedSideBySideAndOverlay:(BOOL)a3;
- (void)setAllowTotalWidthGreaterThanParent:(BOOL)a3;
- (void)setBorderAbuttingMainRendersAsShadow:(BOOL)a3;
- (void)setForceOverlay:(BOOL)a3;
- (void)setLeadingBorderWidthInPixels:(double)a3;
- (void)setLeadingBorderWidthInPoints:(double)a3;
- (void)setLeadingWidths:(id)a3;
- (void)setShouldFadeStaticNavBarButton:(BOOL)a3;
- (void)setSupplementaryMayBeHidden:(BOOL)a3;
- (void)setTrailingBorderWidthInPixels:(double)a3;
- (void)setTrailingBorderWidthInPoints:(double)a3;
- (void)setTrailingMayBeHidden:(BOOL)a3;
- (void)setTrailingWidths:(id)a3;
@end

@implementation UISlidingBarConfiguration

- (UISlidingBarConfiguration)init
{
  v6.receiver = self;
  v6.super_class = UISlidingBarConfiguration;
  v2 = [(UISlidingBarConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(UISlidingBarConfiguration *)v2 setMinimumMainWidthFraction:0.59];
    [(UISlidingBarConfiguration *)v3 setMinimumMainWidthFractionForSecondColumn:0.44];
    [(UISlidingBarConfiguration *)v3 setMaximumMainWidth:1.79769313e308];
    v3->_configurationFlags.value |= 7u;
    v4 = MEMORY[0x1E695E0F0];
    [(UISlidingBarConfiguration *)v3 setLeadingWidths:MEMORY[0x1E695E0F0]];
    [(UISlidingBarConfiguration *)v3 setTrailingWidths:v4];
    [(UISlidingBarConfiguration *)v3 setSupplementaryWidths:v4];
    [(UISlidingBarConfiguration *)v3 setLeadingBorderWidthInPixels:1.0];
    [(UISlidingBarConfiguration *)v3 setTrailingBorderWidthInPixels:1.0];
    [(UISlidingBarConfiguration *)v3 setBorderColor:0];
    [(UISlidingBarConfiguration *)v3 setAllowMixedSideBySideAndOverlay:0];
    [(UISlidingBarConfiguration *)v3 _setLeadingBackgroundStyle:0];
    [(UISlidingBarConfiguration *)v3 _setTrailingBackgroundStyle:0];
    [(UISlidingBarConfiguration *)v3 setBorderAbuttingMainRendersAsShadow:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[2] = self->_configurationFlags.value;
  [(UISlidingBarConfiguration *)self minimumMainWidthFraction];
  [v4 setMinimumMainWidthFraction:?];
  [(UISlidingBarConfiguration *)self minimumMainWidthFractionForSecondColumn];
  [v4 setMinimumMainWidthFractionForSecondColumn:?];
  [(UISlidingBarConfiguration *)self maximumMainWidth];
  [v4 setMaximumMainWidth:?];
  [v4 setSupplementaryEdge:{-[UISlidingBarConfiguration supplementaryEdge](self, "supplementaryEdge")}];
  [(UISlidingBarConfiguration *)self rubberBandExtension];
  [v4 setRubberBandExtension:?];
  v5 = [(UISlidingBarConfiguration *)self leadingWidths];
  [v4 setLeadingWidths:v5];

  v6 = [(UISlidingBarConfiguration *)self trailingWidths];
  [v4 setTrailingWidths:v6];

  v7 = [(UISlidingBarConfiguration *)self supplementaryWidths];
  [v4 setSupplementaryWidths:v7];

  [(UISlidingBarConfiguration *)self _rawLeadingBorderWidth];
  [v4 _setRawLeadingBorderWidth:?];
  [(UISlidingBarConfiguration *)self _rawTrailingBorderWidth];
  [v4 _setRawTrailingBorderWidth:?];
  v8 = [(UISlidingBarConfiguration *)self borderColor];
  [v4 setBorderColor:v8];

  [v4 _setLeadingBackgroundStyle:{-[UISlidingBarConfiguration _leadingBackgroundStyle](self, "_leadingBackgroundStyle")}];
  [v4 _setTrailingBackgroundStyle:{-[UISlidingBarConfiguration _trailingBackgroundStyle](self, "_trailingBackgroundStyle")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_configurationFlags.value != v5[2] || (-[UISlidingBarConfiguration minimumMainWidthFraction](self, "minimumMainWidthFraction"), v7 = v6, [v5 minimumMainWidthFraction], v7 != v8) || (-[UISlidingBarConfiguration minimumMainWidthFractionForSecondColumn](self, "minimumMainWidthFractionForSecondColumn"), v10 = v9, objc_msgSend(v5, "minimumMainWidthFractionForSecondColumn"), v10 != v11) || (-[UISlidingBarConfiguration maximumMainWidth](self, "maximumMainWidth"), v13 = v12, objc_msgSend(v5, "maximumMainWidth"), v13 != v14) || (v15 = -[UISlidingBarConfiguration supplementaryEdge](self, "supplementaryEdge"), v15 != objc_msgSend(v5, "supplementaryEdge")) || (-[UISlidingBarConfiguration rubberBandExtension](self, "rubberBandExtension"), v17 = v16, objc_msgSend(v5, "rubberBandExtension"), v17 != v18))
      {
        v37 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v19 = [(UISlidingBarConfiguration *)self leadingWidths];
      v20 = [v5 leadingWidths];
      if (![v19 isEqual:v20])
      {
        v37 = 0;
LABEL_26:

        goto LABEL_19;
      }

      v21 = [(UISlidingBarConfiguration *)self trailingWidths];
      v22 = [v5 trailingWidths];
      if (![v21 isEqual:v22])
      {
        v37 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v23 = [(UISlidingBarConfiguration *)self supplementaryWidths];
      v24 = [v5 supplementaryWidths];
      if (![v23 isEqual:v24] || (-[UISlidingBarConfiguration _rawLeadingBorderWidth](self, "_rawLeadingBorderWidth"), v26 = v25, objc_msgSend(v5, "_rawLeadingBorderWidth"), v26 != v27) || (-[UISlidingBarConfiguration _rawTrailingBorderWidth](self, "_rawTrailingBorderWidth"), v29 = v28, objc_msgSend(v5, "_rawTrailingBorderWidth"), v29 != v30))
      {
        v37 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v31 = [(UISlidingBarConfiguration *)self borderColor];
      v43 = [v5 borderColor];
      v44 = v31;
      if (v31 == v43)
      {
        v36 = [(UISlidingBarConfiguration *)self _leadingBackgroundStyle];
      }

      else
      {
        v32 = [(UISlidingBarConfiguration *)self borderColor];
        v33 = [v5 borderColor];
        v42 = v32;
        v34 = v32;
        v35 = v33;
        if (![v34 isEqual:v33])
        {
          v37 = 0;
LABEL_34:

LABEL_35:
          goto LABEL_24;
        }

        v36 = [(UISlidingBarConfiguration *)self _leadingBackgroundStyle];
      }

      if (v36 == [v5 _leadingBackgroundStyle])
      {
        v39 = [(UISlidingBarConfiguration *)self _trailingBackgroundStyle];
        v37 = v39 == [v5 _trailingBackgroundStyle];
      }

      else
      {
        v37 = 0;
      }

      v35 = v41;
      if (v44 == v43)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v37 = 0;
LABEL_20:

  return v37;
}

- (unint64_t)hash
{
  v3 = [(UISlidingBarConfiguration *)self leadingWidths];
  v4 = [v3 hash];
  v5 = [(UISlidingBarConfiguration *)self trailingWidths];
  v6 = [v5 hash] ^ v4;
  v7 = [(UISlidingBarConfiguration *)self supplementaryWidths];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (void)setTrailingMayBeHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFFD | v3;
}

- (void)setSupplementaryMayBeHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFFB | v3;
}

- (void)setAllowMixedSideBySideAndOverlay:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFF7 | v3;
}

- (void)setAllowTotalWidthGreaterThanParent:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFEF | v3;
}

- (void)setForceOverlay:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFDF | v3;
}

- (void)setShouldFadeStaticNavBarButton:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFEFF | v3;
}

- (void)setBorderAbuttingMainRendersAsShadow:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFBFF | v3;
}

- (void)_setSupplementaryAdoptsPrimaryBackgroundStyle:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFDFF | v3;
}

- (double)leadingBorderWidthForScale:(double)a3
{
  result = self->__rawLeadingBorderWidth / a3;
  if ((self->_configurationFlags.value & 0x40) == 0)
  {
    return self->__rawLeadingBorderWidth;
  }

  return result;
}

- (void)setLeadingBorderWidthInPixels:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->__rawLeadingBorderWidth = a3;
  self->_configurationFlags.value |= 0x40u;
}

- (void)setLeadingBorderWidthInPoints:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->__rawLeadingBorderWidth = a3;
  self->_configurationFlags.value &= ~0x40u;
}

- (double)trailingBorderWidthForScale:(double)a3
{
  result = self->__rawTrailingBorderWidth / a3;
  if ((self->_configurationFlags.value & 0x80) == 0)
  {
    return self->__rawTrailingBorderWidth;
  }

  return result;
}

- (void)setTrailingBorderWidthInPixels:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->__rawTrailingBorderWidth = a3;
  self->_configurationFlags.value |= 0x80u;
}

- (void)setTrailingBorderWidthInPoints:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  self->__rawTrailingBorderWidth = a3;
  self->_configurationFlags.value &= ~0x80u;
}

- (void)_setLeadingBorderWidthIsInPixels:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFFBF | v3;
}

- (void)_setTrailingBorderWidthIsInPixels:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_configurationFlags.value = self->_configurationFlags.value & 0xFFFFFF7F | v3;
}

- (void)setLeadingWidths:(id)a3
{
  v4 = filterAndCopyWidths(a3);
  leadingWidths = self->_leadingWidths;
  self->_leadingWidths = v4;
}

- (void)setTrailingWidths:(id)a3
{
  v4 = filterAndCopyWidths(a3);
  trailingWidths = self->_trailingWidths;
  self->_trailingWidths = v4;
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = UISlidingBarConfiguration;
  v3 = [(UISlidingBarConfiguration *)&v15 description];
  v4 = [v3 mutableCopy];

  if (!os_variant_has_internal_diagnostics())
  {
    goto LABEL_2;
  }

  value = self->_configurationFlags.value;
  if (value)
  {
    [v4 appendString:@" leadingMayBeHidden"];
    value = self->_configurationFlags.value;
    if ((value & 2) == 0)
    {
LABEL_7:
      if ((value & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((value & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 appendString:@" trailingMayBeHidden"];
  value = self->_configurationFlags.value;
  if ((value & 4) == 0)
  {
LABEL_8:
    if ((value & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 appendString:@" supplementaryMayBeHidden"];
  value = self->_configurationFlags.value;
  if ((value & 8) == 0)
  {
LABEL_9:
    if ((value & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v4 appendString:@" allowMixedSideBySideAndOverlay"];
  value = self->_configurationFlags.value;
  if ((value & 0x10) == 0)
  {
LABEL_10:
    if ((value & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_25:
    [v4 appendString:@" forceOverlay"];
    if ((self->_configurationFlags.value & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_24:
  [v4 appendString:@" allowTotalWidthGreaterThanParent"];
  value = self->_configurationFlags.value;
  if ((value & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((value & 0x400) != 0)
  {
LABEL_12:
    [v4 appendFormat:@" borderAbuttingMainRendersAsShadow"];
  }

LABEL_13:
  if ([(UISlidingBarConfiguration *)self _leadingBackgroundStyle]== 1 || [(UISlidingBarConfiguration *)self _trailingBackgroundStyle]== 1)
  {
    [v4 appendString:@" sidebar-style primary"];
    if ((self->_configurationFlags.value & 0x200) != 0)
    {
      [v4 appendString:@" including supplementary"];
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v12 = __40__UISlidingBarConfiguration_description__block_invoke;
  v13 = &unk_1E7103AA8;
  v7 = v4;
  v14 = v7;
  v8 = [(UISlidingBarConfiguration *)self leadingWidths];
  __40__UISlidingBarConfiguration_description__block_invoke(v11, v8, @"leading");

  v9 = [(UISlidingBarConfiguration *)self trailingWidths];
  v12(v11, v9, @"trailing");

  v10 = [(UISlidingBarConfiguration *)self supplementaryWidths];
  v12(v11, v10, @"supplementary");

  if (self->_rubberBandExtension != 0.0)
  {
    [v7 appendFormat:@" %@=%g", @"extension", *&self->_rubberBandExtension];
  }

LABEL_2:

  return v4;
}

void __40__UISlidingBarConfiguration_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    [*(a1 + 32) appendFormat:@" %@Widths=[", v6];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      v11 = @"%g";
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(a1 + 32);
          [*(*(&v15 + 1) + 8 * v12) doubleValue];
          [v13 appendFormat:v11, v14];
          ++v12;
          v11 = @" %g";
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v11 = @" %g";
      }

      while (v9);
    }

    [*(a1 + 32) appendFormat:@"]"];
  }
}

@end