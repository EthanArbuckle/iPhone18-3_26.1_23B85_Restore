@interface RBDisplayListPredicate
+ (id)predicate;
- (id).cxx_construct;
- (id)copyFilteredDisplayList:(id)a3;
- (id)filteringDisplayList:(id)a3;
- (void)addConditionWithFillColor:(id)a3 colorSpace:(int)a4;
@end

@implementation RBDisplayListPredicate

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0x100000000;
  *(self + 48) = 0;
  return self;
}

+ (id)predicate
{
  v2 = objc_opt_new();

  return v2;
}

- (void)addConditionWithFillColor:(id)a3 colorSpace:(int)a4
{
  __asm
  {
    FCVT            H8, S0
    FCVT            H9, S1
    FCVT            H10, S2
    FCVT            H11, S3
  }

  v13[0] = _H8;
  v13[1] = _H9;
  v13[2] = _H10;
  v13[3] = _H11;
  v14 = 0;
  v15 = rb_color_space(a4);
  RB::DisplayList::Predicate::add_color(self->_predicate.predicate._terms._p, v13);
}

- (id)copyFilteredDisplayList:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [a3 _rb_contents];
  if (v5)
  {
    v6 = v5;
    RB::DisplayList::Builder::Builder(v16);
    RB::DisplayList::Builder::draw(v16, v6, v18, 1.0, &self->_predicate, 0);
    if (*(v17 + 336) || *(v17 + 352))
    {
      v15 = 0;
      if ([a3 _rb_xml_document])
      {
        operator new();
      }

      v7 = [RBMovedDisplayListContents alloc];
      RB::DisplayList::Builder::move_contents(v16, v8, &v14);
      v9 = v15;
      v15 = 0;
      v13 = v9;
      v10 = [(RBMovedDisplayListContents *)v7 initWithContents:&v13 xmlDocument:?];
      [(RBDisplayListPredicate *)&v13 copyFilteredDisplayList:&v15];
    }

    else
    {
      v10 = +[RBEmptyDisplayListContents shared];
    }

    RB::DisplayList::Builder::~Builder(v16);
    return v10;
  }

  else
  {
    v12 = +[RBEmptyDisplayListContents shared];

    return v12;
  }
}

- (id)filteringDisplayList:(id)a3
{
  v3 = [(RBDisplayListPredicate *)self copyFilteredDisplayList:a3];

  return v3;
}

- (void)copyFilteredDisplayList:(void *)a3 .cold.1(void *a1, uint64_t *a2, void *a3)
{
  std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](a1, 0);
  if (*a2)
  {
    OUTLINED_FUNCTION_0_2(*a2);
    if (v5)
    {
      OUTLINED_FUNCTION_0();
      (*(v7 + 8))();
    }
  }

  return std::unique_ptr<RB::XML::Document>::reset[abi:nn200100](a3, 0);
}

@end