@interface WFPencilActionConfigurationMetricsCacheValue
- ($38DE1B8188D18052B1D0096D2D7D1570)value;
- (WFPencilActionConfigurationMetricsCacheValue)initWithValue:(id *)a3;
- (void)setValue:(id *)a3;
@end

@implementation WFPencilActionConfigurationMetricsCacheValue

- (void)setValue:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var1.var1;
  *&self->_value.grid.chicletWidth = *&a3->var2.var1;
  *&self->_value.sidebar.leadingPadding = v4;
  *&self->_value.interfaceOrientation = v3;
  v5 = *&a3->var2.var3.top;
  v6 = *&a3->var2.var3.bottom;
  v7 = *&a3->var3.var0;
  *&self->_value.sheet.insets.top = *&a3->var3.var2.top;
  *&self->_value.sheet.grabberTopSpacing = v7;
  *&self->_value.grid.insets.bottom = v6;
  *&self->_value.grid.insets.top = v5;
  v8 = *&a3->var3.var2.bottom;
  v9 = *&a3->var4.var0;
  v10 = *&a3->var4.var2.top;
  *&self->_value.searchBar.containerInsets.bottom = *&a3->var4.var2.bottom;
  *&self->_value.searchBar.containerInsets.top = v10;
  *&self->_value.searchBar.barWidth = v9;
  *&self->_value.sheet.insets.bottom = v8;
}

- ($38DE1B8188D18052B1D0096D2D7D1570)value
{
  v3 = *&self->var3.var2.trailing;
  v4 = *&self->var4.var2.leading;
  *&retstr->var4.var0 = *&self->var4.var1;
  *&retstr->var4.var2.top = v4;
  *&retstr->var4.var2.bottom = *&self->var4.var2.trailing;
  v5 = *&self->var2.var3.leading;
  v6 = *&self->var3.var1;
  *&retstr->var2.var3.bottom = *&self->var2.var3.trailing;
  *&retstr->var3.var0 = v6;
  *&retstr->var3.var2.top = *&self->var3.var2.leading;
  *&retstr->var3.var2.bottom = v3;
  v7 = *&self->var2.var0;
  *&retstr->var0 = self->var1;
  *&retstr->var1.var1 = v7;
  *&retstr->var2.var1 = *&self->var2.var2;
  *&retstr->var2.var3.top = v5;
  return self;
}

- (WFPencilActionConfigurationMetricsCacheValue)initWithValue:(id *)a3
{
  v16.receiver = self;
  v16.super_class = WFPencilActionConfigurationMetricsCacheValue;
  v4 = [(WFPencilActionConfigurationMetricsCacheValue *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3->var0;
    v7 = *&a3->var1.var1;
    *(v4 + 40) = *&a3->var2.var1;
    *(v4 + 24) = v7;
    *(v4 + 8) = v6;
    v8 = *&a3->var2.var3.top;
    v9 = *&a3->var2.var3.bottom;
    v10 = *&a3->var3.var0;
    *(v4 + 104) = *&a3->var3.var2.top;
    *(v4 + 88) = v10;
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    v11 = *&a3->var3.var2.bottom;
    v12 = *&a3->var4.var0;
    v13 = *&a3->var4.var2.top;
    *(v4 + 168) = *&a3->var4.var2.bottom;
    *(v4 + 152) = v13;
    *(v4 + 136) = v12;
    *(v4 + 120) = v11;
    v14 = v4;
  }

  return v5;
}

@end