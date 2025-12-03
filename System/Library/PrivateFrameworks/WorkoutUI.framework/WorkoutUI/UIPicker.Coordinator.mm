@interface UIPicker.Coordinator
- (_TtCV9WorkoutUIP33_2CF2A6943750EC02257617BB8FECEA7D8UIPicker11Coordinator)init;
- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
@end

@implementation UIPicker.Coordinator

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  if (component < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(self + OBJC_IVAR____TtCV9WorkoutUIP33_2CF2A6943750EC02257617BB8FECEA7D8UIPicker11Coordinator_components);
  if (*(v4 + 16) <= component)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4 + 56 * component;
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  self = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_7:
    __break(1u);
  }

  return self;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  v10 = specialized UIPicker.Coordinator.pickerView(_:titleForRow:forComponent:)(row, component);
  v12 = v11;

  if (v12)
  {
    v13 = MEMORY[0x20F30BAD0](v10, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  viewCopy = view;
  selfCopy = self;
  specialized UIPicker.Coordinator.pickerView(_:didSelectRow:inComponent:)(row, component);
}

- (id)pickerView:(id)view accessibilityLabelForComponent:(int64_t)component
{
  if (component < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtCV9WorkoutUIP33_2CF2A6943750EC02257617BB8FECEA7D8UIPicker11Coordinator_components);
  if (*(v5 + 16) <= component)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  v6 = v5 + 56 * component;
  v7 = *(v6 + 80);
  if (v7)
  {
    v8 = *(v6 + 72);

    v9 = MEMORY[0x20F30BAD0](v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtCV9WorkoutUIP33_2CF2A6943750EC02257617BB8FECEA7D8UIPicker11Coordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtCV9WorkoutUIP33_2CF2A6943750EC02257617BB8FECEA7D8UIPicker11Coordinator_components) = MEMORY[0x277D84F90];
  v3.receiver = self;
  v3.super_class = type metadata accessor for UIPicker.Coordinator();
  return [(UIPicker.Coordinator *)&v3 init];
}

@end