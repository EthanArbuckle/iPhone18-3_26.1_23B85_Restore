@interface HUDUserClientFeatureEntry
- (id)initPopover:(HUDUserFeatureDescriptor *)a3 items:(id)a4 selectedIndex:(unint64_t)a5 didChange:(id)a6;
- (id)initToggle:(HUDUserFeatureDescriptor *)a3 state:(BOOL)a4 didChange:(id)a5;
- (void)buildAccessoryEntries;
- (void)setToDefault;
@end

@implementation HUDUserClientFeatureEntry

- (id)initToggle:(HUDUserFeatureDescriptor *)a3 state:(BOOL)a4 didChange:(id)a5
{
  v8 = a5;
  v31.receiver = self;
  v31.super_class = HUDUserClientFeatureEntry;
  v9 = [(HUDUserClientFeatureEntry *)&v31 init];
  v10 = v9;
  if (v9)
  {
    __copy_assignment_8_8_s0_s8_s16_t24w12_s40_s48_s56_s64(&v9->_descriptor, a3);
    v10->_component = HUDReportingComponentFromIdentifier(a3->identifier);
    options = a3->options;
    v12 = a3->title;
    envVar = a3->envVar;
    if (envVar && (a3->options & 8) != 0)
    {
      v14 = HUDPersistancyGetValue(envVar);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = a3->envVar;
        v16 = v8[2];
        v17 = v14;
        v16(v8, v15, v17);
        a4 = [v17 BOOLValue];
      }
    }

    v18 = [MTLHUDConfigViewControllerCheckboxEntry alloc];
    v19 = v12;
    if ((options & 2) != 0)
    {
      v19 = [NSString stringWithFormat:@"(Internal) %@", v12];
    }

    v20 = v10->_descriptor.envVar;
    v21 = (a3->options & 4) == 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __56__HUDUserClientFeatureEntry_initToggle_state_didChange___block_invoke;
    v29[3] = &__block_descriptor_33_e5_B8__0l;
    v30 = a4;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __56__HUDUserClientFeatureEntry_initToggle_state_didChange___block_invoke_2;
    v26[3] = &unk_6A108;
    v28 = v8;
    v22 = v10;
    v27 = v22;
    v23 = [(MTLHUDConfigViewControllerCheckboxEntry *)v18 initWithTitle:v19 envVar:v20 enabled:v21 checked:v29 representedObject:0 didChange:v26];
    configEntry = v22->_configEntry;
    v22->_configEntry = &v23->super;

    if ((options & 2) != 0)
    {
    }

    [(HUDUserClientFeatureEntry *)v22 buildAccessoryEntries];
  }

  return v10;
}

void __56__HUDUserClientFeatureEntry_initToggle_state_didChange___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [a2 checked]);
  v3 = *(*(a1 + 32) + 24);
  (*(*(a1 + 40) + 16))();
  HUDPersistancyAddKeyAndValue(*(*(a1 + 32) + 24), v4);
}

- (id)initPopover:(HUDUserFeatureDescriptor *)a3 items:(id)a4 selectedIndex:(unint64_t)a5 didChange:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ([v10 count] <= a5)
  {
    v29 = 0;
  }

  else
  {
    v37.receiver = self;
    v37.super_class = HUDUserClientFeatureEntry;
    v12 = [(HUDUserClientFeatureEntry *)&v37 init];
    v13 = v12;
    if (v12)
    {
      __copy_assignment_8_8_s0_s8_s16_t24w12_s40_s48_s56_s64(&v12->_descriptor, a3);
      v13->_component = HUDReportingComponentFromIdentifier(a3->identifier);
      options = a3->options;
      v15 = a3->title;
      envVar = a3->envVar;
      if (envVar && (a3->options & 8) != 0)
      {
        v17 = HUDPersistancyGetValue(envVar);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v10 indexOfObject:v17];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v18;
            v20 = a3->envVar;
            v21 = [NSNumber numberWithUnsignedInteger:v18];
            v11[2](v11, v20, v21);

            a5 = v19;
          }
        }
      }

      v31 = [MTLHUDConfigViewControllerPopupEntry alloc];
      v32 = options;
      v22 = v15;
      if ((options & 2) != 0)
      {
        v22 = [NSString stringWithFormat:@"(Internal) %@", v15];
      }

      v23 = v13->_descriptor.envVar;
      v24 = (a3->options & 4) == 0;
      v25 = [v10 objectAtIndexedSubscript:a5];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __71__HUDUserClientFeatureEntry_initPopover_items_selectedIndex_didChange___block_invoke;
      v33[3] = &unk_6A130;
      v34 = v10;
      v36 = v11;
      v26 = v13;
      v35 = v26;
      v27 = [(MTLHUDConfigViewControllerPopupEntry *)v31 initWithTitle:v22 envVar:v23 enabled:v24 values:v34 value:v25 representedObject:0 didChange:v33];
      configEntry = v26->_configEntry;
      v26->_configEntry = &v27->super;

      if ((v32 & 2) != 0)
      {
      }

      [(HUDUserClientFeatureEntry *)v26 buildAccessoryEntries];
    }

    self = v13;
    v29 = self;
  }

  return v29;
}

void __71__HUDUserClientFeatureEntry_initPopover_items_selectedIndex_didChange___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 value];
  v3 = [*(a1 + 32) indexOfObject:?];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 40) + 24);
    v6 = [NSNumber numberWithUnsignedInteger:v3];
    (*(v4 + 16))(v4, v5, v6);

    HUDPersistancyAddKeyAndValue(*(*(a1 + 40) + 24), v7);
  }
}

- (void)buildAccessoryEntries
{
  if ([(NSString *)self->_descriptor.description length])
  {
    v3 = [[MTLHUDConfigViewControllerMessageEntry alloc] initWithMessage:self->_descriptor.description color:0];
    v4 = [(MTLHUDConfigViewControllerEntry *)self->_configEntry children];
    [v4 addObject:v3];
  }

  if ([(NSArray *)self->_descriptor.documentationLinks count]&& [(NSArray *)self->_descriptor.documentationLinks count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_descriptor.documentationLinks objectAtIndexedSubscript:v5];
      if (v5 >= [(NSArray *)self->_descriptor.documentationTitles count])
      {
        v7 = v6;
      }

      else
      {
        v7 = [(NSArray *)self->_descriptor.documentationTitles objectAtIndexedSubscript:v5];
      }

      v8 = v7;
      v9 = [[MTLHUDConfigViewControllerLinkEntry alloc] initWithTitle:v7 andURL:v6];
      v10 = [(MTLHUDConfigViewControllerEntry *)self->_configEntry children];
      [v10 addObject:v9];

      ++v5;
    }

    while (v5 < [(NSArray *)self->_descriptor.documentationLinks count]);
  }
}

- (void)setToDefault
{
  configEntry = self->_configEntry;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTLHUDConfigViewControllerEntry *)self->_configEntry setChecked:[(NSNumber *)self->_descriptor.defaultValue BOOLValue]];
    envVar = self->_descriptor.envVar;
    v5 = [NSNumber numberWithBool:[(NSNumber *)self->_descriptor.defaultValue BOOLValue]];
  }

  else
  {
    v6 = self->_configEntry;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    [(MTLHUDConfigViewControllerEntry *)self->_configEntry setSelectedIndex:[(NSNumber *)self->_descriptor.defaultValue intValue]];
    envVar = self->_descriptor.envVar;
    v5 = [NSNumber numberWithInt:[(NSNumber *)self->_descriptor.defaultValue intValue]];
  }

  v7 = v5;
  HUDPersistancyAddKeyAndValue(envVar, v5);
}

@end