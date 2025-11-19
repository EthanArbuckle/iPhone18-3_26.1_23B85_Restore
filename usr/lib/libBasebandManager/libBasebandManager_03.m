uint64_t abm::data::getDataPropertyTypeFromDict(xpc_object_t *a1)
{
  if (MEMORY[0x29C26CE60](*a1) != MEMORY[0x29EDCAA00])
  {
    return 5;
  }

  value = xpc_dictionary_get_value(*a1, "kDataProperty");
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default(&object, 5);
  xpc_release(object);
  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void abm::data::DataAggregationProtocol::toDict(abm::data::DataAggregationProtocol *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationProtocol", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationProtocol::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationProtocol", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

const char *abm::data::DataAggregationProtocol::asString(abm::data::DataAggregationProtocol *this)
{
  v1 = *(this + 3);
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_29EE636D8[v1];
  }
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(0);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationProtocol>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E236A0;
  *(a2 + 8) = 0x3AAAAAA01;
  if (MEMORY[0x29C26CE60](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationProtocol"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationProtocol");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default(&object, 3);
    xpc_release(object);
    if (v5)
    {
      if (v5 == 1)
      {
        *(a2 + 12) = 1;
      }

      else if (v5 == 2)
      {
        *(a2 + 12) = 2;
      }

      else
      {
        *(a2 + 8) = 0;
        *(a2 + 12) = 3;
      }
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationProtocol>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E236A0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  if (result >= 3)
  {
    *(a2 + 8) = 0;
    result = 3;
  }

  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxDatagrams::toDict(abm::data::DataAggregationMaxDatagrams *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(1);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxDatagrams", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxDatagrams::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxDatagrams", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(1);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E236E8;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C26CE60](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxDatagrams");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxDatagrams>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E236E8;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataAggregationMaxSize::toDict(abm::data::DataAggregationMaxSize *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(2);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_int64_create(*(this + 3));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataAggregationMaxSize", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataAggregationMaxSize::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_int64_create(*(a1 + 12));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataAggregationMaxSize", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E23730;
  *(a2 + 8) = 2863311361;
  if (MEMORY[0x29C26CE60](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataAggregationMaxSize");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 12) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataAggregationMaxSize>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E23730;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 12) = result;
  return result;
}

void abm::data::DataFlowControl::toDict(abm::data::DataFlowControl *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataFlowControl", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataFlowControl::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataFlowControl", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataFlowControl>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E23778;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C26CE60](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataFlowControl"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataFlowControl");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataFlowControl>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E23778;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void abm::data::DataPowerSave::toDict(abm::data::DataPowerSave *this@<X0>, void **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = xpc_int64_create(4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = *a2;
  xpc_dictionary_set_value(v8, "kDataProperty", v7);
  v9 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v9);
  v10 = xpc_BOOL_create(*(this + 9));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, "kDataPowerSave", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
}

void abm::data::DataPowerSave::addToDict(uint64_t a1, xpc_object_t *a2)
{
  v3 = xpc_BOOL_create(*(a1 + 9));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "kDataPowerSave", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::createDictForGet(xpc_object_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  *a1 = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_int64_create(4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a1, "kDataProperty", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
}

void abm::data::DataProperty<abm::data::DataPowerSave>::create(xpc_object_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E237C0;
  *(a2 + 8) = 0xAAAAAAAAAAAA0001;
  if (MEMORY[0x29C26CE60](*a1) == MEMORY[0x29EDCAA00] && xpc_dictionary_get_value(*a1, "kDataPowerSave"))
  {
    value = xpc_dictionary_get_value(*a1, "kDataPowerSave");
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    *(a2 + 9) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *(a2 + 8) = 0;
  }
}

uint64_t abm::data::DataProperty<abm::data::DataPowerSave>::create@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2A1E237C0;
  *(a2 + 8) = 0xAAAAAAAAAAAAAA01;
  *(a2 + 9) = result != 0;
  return result;
}

void StatsModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  StatsModule::StatsModule(v4, v11);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v9 = *a2 + 72;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN11StatsModule4initEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_0;
  v12[4] = v8;
  v13 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = v9;
  block[5] = &v13;
  v10 = *(v8 + 88);
  if (*(v8 + 96))
  {
    dispatch_async_and_wait(v10, block);
  }

  else
  {
    dispatch_sync(v10, block);
  }
}

void sub_2970241B0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void StatsModule::init(StatsModule *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11StatsModule4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_0;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = this + 72;
  block[5] = &v4;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t StatsModule::StatsModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E23808;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "stats.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("stats.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, v9);
  MEMORY[0x29C26B020](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E23808;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void StatsModule::~StatsModule(StatsModule *this)
{
  *this = &unk_2A1E23808;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 23);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 21);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::__map_value_compare<abm::stats::StatsID,std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::less<abm::stats::StatsID>,true>,std::allocator<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>>>::destroy(*(this + 18));
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *(this + 15);
    v8 = *(this + 14);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 14);
    }

    *(this + 15) = v6;
    operator delete(v8);
  }

  MEMORY[0x29C26B020](v2);
  v10 = *(this + 12);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 3);
    }

    *(this + 4) = v13;
    operator delete(v15);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  StatsModule::~StatsModule(this);

  operator delete(v1);
}

void ___ZN11StatsModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Initializing", v3, 2u);
    StatsModule::initializeStats_sync(v1);
  }

  else
  {
    StatsModule::initializeStats_sync(v1);
  }
}

void StatsModule::initializeStats_sync(StatsModule *this)
{
  StatsModule::addStatsToModule_sync(this, 0);
  StatsAWD::create(&v8);
  v2 = v8;
  v8 = 0uLL;
  v3 = *(this + 21);
  *(this + 10) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v8 + 1);
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  AnalyticsHelper::create(&v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 23);
  *(this + 11) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

_WORD *StatsModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *StatsModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void StatsModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_0;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E239D0;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void StatsModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void StatsModule::registerCommandHandlers_sync(StatsModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[1] = v9;
    v17 = v11 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_14;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_14:
    memmove(v10, v7, v9);
  }

  *(v9 + v10) = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_5_4;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(v13);
  v15 = v12;
  Service::registerCommandHandler(this, __dst, &v15);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297024FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    _Block_release(v23);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL StatsModule::reportStats_sync(uint64_t a1, int a2, xpc_object_t *a3)
{
  v5 = *a3;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  updated = StatsModule::updateData_sync(a1, a2, &v8);
  xpc_release(v5);
  return updated;
}

BOOL StatsModule::updateData_sync(uint64_t a1, int a2, void **a3)
{
  cf = 0;
  v48 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v7 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v8 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A18B75C0;
  }

  v10 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v11 = &__p[1] + 7;
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v12 = 7;
    v13 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v12 = 15;
    v13 = &__p[1] + 7;
  }

  *v13 = 0;
  v46 = v12;
  os_unfair_lock_lock((v6 + 40));
  Preferences::getPreference<__CFDictionary const*>(v6, __p, &cf);
  os_unfair_lock_unlock((v6 + 40));
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else if (!v10)
  {
LABEL_19:
    v14 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  v14 = cf;
  if (cf)
  {
LABEL_20:
    CFRetain(v14);
  }

LABEL_21:
  v15 = v48;
  v48 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = (a1 + 144);
  v16 = *(a1 + 144);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (v16)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 32);
        if (v19 <= a2)
        {
          break;
        }

        v16 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_30;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        v17 = v18 + 1;
        goto LABEL_30;
      }
    }

    v34 = v18 + 5;
    v23 = v18[5];
    v22 = v34[1];
    v43 = v23;
    v44 = v22;
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = (a1 + 144);
LABEL_30:
    v20 = operator new(0x38uLL);
    *(v20 + 8) = a2;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v18;
    *v17 = v20;
    v21 = **(a1 + 136);
    if (v21)
    {
      *(a1 + 136) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v20);
    ++*(a1 + 152);
    v23 = *(v20 + 5);
    v22 = *(v20 + 6);
    v43 = v23;
    v44 = v22;
    if (v22)
    {
LABEL_33:
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (!v23)
  {
    goto LABEL_60;
  }

  v24 = v48;
  v42 = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  v25 = *a3;
  object = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v23 + 24))(__p, v23, &v42, &object);
  v26 = __p[0];
  v48 = __p[0];
  __p[0] = 0;
  if (v24)
  {
    CFRelease(v24);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }
  }

  xpc_release(object);
  object = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  if (!v26)
  {
LABEL_60:
    v33 = 0;
    if (!v22)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v27 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v28 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v29 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A18B75C0;
  }

  v31 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v32 = 7;
    v11 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v32 = 15;
  }

  *v11 = 0;
  v46 = v32;
  v35 = v48;
  os_unfair_lock_lock((v27 + 40));
  if (v46 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v49, v36);
  v37 = v49[0];
  v49[1] = v35;
  if (v35)
  {
    CFRetain(v35);
    v38 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v37, v35, *(v27 + 8), *(v27 + 16), *MEMORY[0x29EDB8FA8]);
    v33 = CFPreferencesSynchronize(*(v27 + 8), *(v27 + 16), v38) != 0;
    CFRelease(v35);
    MEMORY[0x29C26B130](v49);
    os_unfair_lock_unlock((v27 + 40));
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v22 = v44;
      if (!v44)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v33 = 0;
  MEMORY[0x29C26B130](v49);
  os_unfair_lock_unlock((v27 + 40));
  if (v46 < 0)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (v31)
  {
    goto LABEL_74;
  }

LABEL_75:
  v22 = v44;
  if (!v44)
  {
    goto LABEL_77;
  }

LABEL_76:
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v39 = v48;
    if (!v48)
    {
      return v33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v39 = v48;
  if (v48)
  {
LABEL_78:
    CFRelease(v39);
  }

  return v33;
}

void sub_297025748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

void sub_297025828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void StatsModule::getAllStats_sync(StatsModule *this@<X0>, __CFDictionary **a2@<X8>)
{
  v27 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  v7 = *(this + 17);
  v8 = this + 144;
  if (v7 != this + 144)
  {
    while (1)
    {
      v26 = 0;
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v9 = off_2A18B75C0;
      if (off_2A18B75C0)
      {
        v10 = *(&off_2A18B75C0 + 1);
        if (!*(&off_2A18B75C0 + 1))
        {
          goto LABEL_9;
        }

LABEL_8:
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_9;
      }

      SharedData::create_default_global(__p);
      v13 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v14 = *(&off_2A18B75C0 + 1);
      off_2A18B75C0 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

LABEL_37:
      v9 = off_2A18B75C0;
      v10 = *(&off_2A18B75C0 + 1);
      if (*(&off_2A18B75C0 + 1))
      {
        goto LABEL_8;
      }

LABEL_9:
      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v11 = 7;
        v12 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v11 = 15;
        v12 = &__p[1] + 7;
      }

      *v12 = 0;
      v25 = v11;
      os_unfair_lock_lock((v9 + 40));
      Preferences::getPreference<__CFDictionary const*>(v9, __p, &v26);
      os_unfair_lock_unlock((v9 + 40));
      if (v25 < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }

      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_22:
        v17 = v26;
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v17 = v26;
      if (!v26)
      {
        goto LABEL_29;
      }

LABEL_23:
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v18 = 7;
        v19 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v18 = 15;
        v19 = &__p[1] + 7;
      }

      *v19 = 0;
      v25 = v18;
      ctu::cf::insert<char const*,__CFDictionary const*>(v27, __p, v17, v4, v16);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        v20 = *(v7 + 1);
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      operator delete(__p[0]);
      v20 = *(v7 + 1);
      if (!v20)
      {
        do
        {
LABEL_33:
          v21 = *(v7 + 2);
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
        goto LABEL_5;
      }

      do
      {
LABEL_30:
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
LABEL_5:
      v7 = v21;
      if (v21 == v8)
      {
        v6 = v27;
        break;
      }
    }
  }

  if (v6 && (v23 = CFGetTypeID(v6), v23 == CFDictionaryGetTypeID()))
  {
    *a2 = v6;
    CFRetain(v6);
  }

  else
  {
    *a2 = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void StatsModule::addStatsToModule_sync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  Stats::create(a2, __p);
  v5 = __p[0];
  v4 = __p[1];
  v21 = __p[0];
  v22 = __p[1];
  if (__p[0])
  {
    v6 = *(__p[0] + 12);
    v8 = (a1 + 144);
    v7 = *(a1 + 144);
    if (v7)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v7 + 32);
          if (v6 >= v10)
          {
            break;
          }

          v7 = *v9;
          v8 = v9;
          if (!*v9)
          {
            goto LABEL_9;
          }
        }

        if (v10 >= v6)
        {
          break;
        }

        v7 = v9[1];
        if (!v7)
        {
          v8 = v9 + 1;
          goto LABEL_9;
        }
      }

      v11 = v9;
      if (!__p[1])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = (a1 + 144);
LABEL_9:
      v11 = operator new(0x38uLL);
      *(v11 + 8) = v6;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v9;
      *v8 = v11;
      v12 = **(a1 + 136);
      if (v12)
      {
        *(a1 + 136) = v12;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v11);
      ++*(a1 + 152);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
LABEL_13:
    v13 = *(v11 + 6);
    *(v11 + 5) = v5;
    *(v11 + 6) = v4;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    goto LABEL_17;
  }

  v14 = *(a1 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      v17 = __p + 7;
      qmemcpy(__p, "UNKNOWN", 7);
      v18 = 7;
    }

    else
    {
      v17 = &__p[1] + 7;
      qmemcpy(__p, "Boot Statistics", 15);
      v18 = 15;
    }

    *v17 = 0;
    v20 = v18;
    *buf = 136315138;
    v24 = __p;
    _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "Failed to create stats of %s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_17:
  v15 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_297025EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297025EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StatsModule::updateAnalyticsData_sync(uint64_t a1, void **a2)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *a2;
    object = v3;
    if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    AnalyticsHelper::updateData(v2, &object);
    xpc_release(object);
  }

  else
  {
    v4 = *(a1 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Analytics object has not created yet", buf, 2u);
    }
  }
}

void *ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E23988;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_297026140(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::__map_value_compare<abm::stats::StatsID,std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::less<abm::stats::StatsID>,true>,std::allocator<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::__map_value_compare<abm::stats::StatsID,std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::less<abm::stats::StatsID>,true>,std::allocator<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>>>::destroy(*a1);
    std::__tree<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::__map_value_compare<abm::stats::StatsID,std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::less<abm::stats::StatsID>,true>,std::allocator<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  StatsModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297026534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
    v3 = v2[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v2[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v2);
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE63540, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

BOOL ctu::cf::insert<char const*,__CFDictionary const*>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  v10 = 0;
  ctu::cf::convert_copy(&v10, a2, 0x8000100, a4, a5);
  v7 = v10;
  v10 = a3;
  if (!a3)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

LABEL_7:
    CFRelease(v7);
    return v8;
  }

  CFRetain(a3);
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a3);
  }

  CFRelease(a3);
  if (v7)
  {
    goto LABEL_7;
  }

  return v8;
}

void sub_2970267A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

BOOL defaults::coredump::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
  v5 = v4;
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
    {
      qword_2A18B7748 = 0;
      qword_2A18B7750 = 0;
      __cxa_guard_release(&qword_2A18B7740);
    }

    if (_MergedGlobals == -1)
    {
      v6 = qword_2A18B7750;
      if (!os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v6 = qword_2A18B7750;
      if (!os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(v3 + 23) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v7;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    v9 = capabilities::trace::allowed(v4);
    std::to_string(&buf, v9);
    *v14 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v11;
  }

LABEL_14:
  result = v5 == 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970269E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297026940);
    }

    JUMPOUT(0x297026948);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::bbipc::get(char *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E0]);
    if (v4)
    {
      v5 = strcasecmp(a1, *MEMORY[0x29EDBE7A0]);
      v6 = a1;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    v13 = capabilities::trace::enabledByDefault(v4);
    std::to_string(&buf, v13);
    goto LABEL_17;
  }

  v6 = *a1;
  v4 = strcasecmp(*a1, *MEMORY[0x29EDBE6E0]);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = strcasecmp(v6, *MEMORY[0x29EDBE7A0]);
  if (!v5)
  {
LABEL_14:
    v12 = capabilities::ipc::defaultLogLevel(v5);
    std::to_string(&buf, v12);
LABEL_17:
    *v18 = buf.__r_.__value_.__l.__size_;
    v15 = buf.__r_.__value_.__r.__words[0];
    *&v18[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v15;
    *(a2 + 8) = *v18;
    *(a2 + 15) = *&v18[7];
    *(a2 + 23) = v16;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v7 = strcasecmp(v6, *MEMORY[0x29EDBEA38]);
  if (!v7)
  {
    v14 = capabilities::ipc::defaultMHIConfigPayloadSizeBytes(v7);
    std::to_string(&buf, v14);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v8 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v8 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v10 = *MEMORY[0x29EDBE7A8];
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v10;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
  _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297026C5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297026BB8);
    }

    JUMPOUT(0x297026BC0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::compression::get(char *a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBD4A0]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      CompressionMode = capabilities::trace::getCompressionMode(IsInternalBuild);
    }

    else
    {
      CompressionMode = 2;
    }

    std::to_string(&v12, CompressionMode);
    goto LABEL_18;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBD4A0]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBD340]))
  {
    std::to_string(&v12, 0);
LABEL_18:
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v12;
    result = 1;
    goto LABEL_21;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }
  }

  v7 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(v12.__r_.__value_.__l.__data_) = 136315394;
  *(v12.__r_.__value_.__r.__words + 4) = v7;
  WORD2(v12.__r_.__value_.__r.__words[1]) = 2080;
  *(&v12.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &v12, 0x16u);
  result = 0;
LABEL_21:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL defaults::ttr::get(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    v4 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_3;
    }

LABEL_12:
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    if ((IsInternalBuild & 1) != 0 || (IsInternalBuild = TelephonyUtilIsCarrierBuild(), IsInternalBuild))
    {
      if (capabilities::radio::initium(IsInternalBuild))
      {
        LODWORD(IsInternalBuild) = 3;
      }

      else
      {
        LODWORD(IsInternalBuild) = 1;
      }
    }

    std::to_string(&buf, IsInternalBuild);
    goto LABEL_19;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!strcasecmp(v4, *MEMORY[0x29EDBF2D0]))
  {
    std::to_string(&buf, 43200);
LABEL_19:
    *v13 = buf.__r_.__value_.__l.__size_;
    v10 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v10;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v11;
    result = 1;
    goto LABEL_22;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v7 = *MEMORY[0x29EDBE718];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970270C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297027020);
    }

    JUMPOUT(0x297027028);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::logfilter::get(char *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

LABEL_15:
    std::to_string(&buf, 512);
    goto LABEL_17;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_15;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEDE8]))
  {
LABEL_14:
    std::to_string(&buf, -1);
LABEL_17:
    *v14 = buf.__r_.__value_.__l.__size_;
    v11 = buf.__r_.__value_.__r.__words[0];
    *&v14[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 8) = *v14;
    *(a2 + 15) = *&v14[7];
    *(a2 + 23) = v12;
    result = 1;
    goto LABEL_20;
  }

LABEL_4:
  v5 = strcasecmp(v4, *MEMORY[0x29EDBF810]);
  if (!v5)
  {
    v10 = capabilities::trace::supportsDuplicateSignatureDetection(v5);
    std::to_string(&buf, v10);
    goto LABEL_17;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v6 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v6 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_20;
    }
  }

  v8 = *MEMORY[0x29EDBE528];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_20:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297027348(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x2970272A4);
    }

    JUMPOUT(0x2970272ACLL);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::systemlogs::get(char *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v4 = strcasecmp(a1, *MEMORY[0x29EDBE6E8]);
      v5 = a1;
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_14:
      v10 = capabilities::abs::defaultSystemLogsHistory(v4);
      std::to_string(&buf, v10);
LABEL_20:
      *v15 = buf.__r_.__value_.__l.__size_;
      v12 = buf.__r_.__value_.__r.__words[0];
      *&v15[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v13 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v12;
      *(a2 + 8) = *v15;
      *(a2 + 15) = *&v15[7];
      *(a2 + 23) = v13;
      result = 1;
      goto LABEL_23;
    }

LABEL_15:
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    std::to_string(&buf, IsCarrierBuild);
    goto LABEL_20;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_15;
  }

  v4 = strcasecmp(v5, *MEMORY[0x29EDBE6E8]);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    std::to_string(&buf, 1);
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v6 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v6 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v8 = *MEMORY[0x29EDBE710];
  if (a1[23] >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v8;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
  _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2970275EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297027548);
    }

    JUMPOUT(0x297027550);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::profile::get(char *a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v4 = *a1;
    if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = a1;
    if (!strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
LABEL_12:
      std::to_string(&buf, 0);
      *v12 = buf.__r_.__value_.__l.__size_;
      v9 = buf.__r_.__value_.__r.__words[0];
      *&v12[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v9;
      *(a2 + 8) = *v12;
      *(a2 + 15) = *&v12[7];
      *(a2 + 23) = v10;
      result = 1;
      goto LABEL_15;
    }
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF7D0]))
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  v7 = *MEMORY[0x29EDBE5B0];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v7;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
  _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  result = 0;
LABEL_15:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29702783C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297027798);
    }

    JUMPOUT(0x2970277A0);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tailspin::get(std::string::size_type a1, uint64_t a2)
{
  v3 = a1;
  v15 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strcasecmp(a1, *MEMORY[0x29EDBE4C8]);
  if (v4)
  {
    if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
    {
      qword_2A18B7748 = 0;
      qword_2A18B7750 = 0;
      __cxa_guard_release(&qword_2A18B7740);
    }

    if (_MergedGlobals == -1)
    {
      v5 = qword_2A18B7750;
      if (!os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals, &__block_literal_global);
      v5 = qword_2A18B7750;
      if (!os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    v6 = *MEMORY[0x29EDBE608];
    if (*(v3 + 23) >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = *v3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", &buf, 0x16u);
  }

  else
  {
    IsInternalBuild = TelephonyUtilIsInternalBuild();
    std::to_string(&buf, IsInternalBuild);
    *v13 = buf.__r_.__value_.__l.__size_;
    v9 = buf.__r_.__value_.__r.__words[0];
    *&v13[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
    *(a2 + 8) = *v13;
    *(a2 + 15) = *&v13[7];
    *(a2 + 23) = v10;
  }

LABEL_14:
  result = v4 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297027A38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (*(v2 + 23) < 0)
    {
      JUMPOUT(0x297027990);
    }

    JUMPOUT(0x297027998);
  }

  _Unwind_Resume(a1);
}

BOOL defaults::tracesettings::get(char *a1, std::string *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((a1[23] & 0x80000000) == 0)
  {
    if (!strcasecmp(a1, *MEMORY[0x29EDBEF68]))
    {
LABEL_19:
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = 1;
        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = 1;
      }

      LOWORD(a2->__r_.__value_.__l.__data_) = 48;
      goto LABEL_36;
    }

    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v4 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_5;
      }

LABEL_16:
      if ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild())
      {
        v9 = "1";
      }

      else
      {
        v9 = "3";
      }

      std::string::__assign_external(a2, v9);
      goto LABEL_36;
    }

LABEL_21:
    v10 = abm::helper::asString();
    v11 = strlen(v10);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      *&v16[8] = v12;
      *&v16[16] = v14 | 0x8000000000000000;
      *v16 = v13;
    }

    else
    {
      v16[23] = v11;
      v13 = v16;
      if (!v11)
      {
        v16[0] = 0;
        if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_25:
          *&a2->__r_.__value_.__l.__data_ = *v16;
          a2->__r_.__value_.__r.__words[2] = *&v16[16];
LABEL_36:
          result = 1;
          goto LABEL_37;
        }

LABEL_33:
        operator delete(a2->__r_.__value_.__l.__data_);
        goto LABEL_25;
      }
    }

    memmove(v13, v10, v12);
    v13[v12] = 0;
    if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v4 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
  {
    goto LABEL_19;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBF098]))
  {
    goto LABEL_21;
  }

  if (!strcasecmp(v4, *MEMORY[0x29EDBEA40]))
  {
    goto LABEL_16;
  }

LABEL_5:
  if (!strcasecmp(v4, *MEMORY[0x29EDBEDD0]))
  {
    goto LABEL_19;
  }

  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals == -1)
  {
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals, &__block_literal_global);
    v5 = qword_2A18B7750;
    result = os_log_type_enabled(qword_2A18B7750, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_37;
    }
  }

  v7 = *MEMORY[0x29EDBE600];
  if (a1[23] >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  *v16 = 136315394;
  *&v16[4] = v7;
  *&v16[12] = 2080;
  *&v16[14] = v8;
  _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Invalid key; domain='%s' key='%s'", v16, 0x16u);
  result = 0;
LABEL_37:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18B7740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7740))
  {
    qword_2A18B7748 = 0;
    qword_2A18B7750 = 0;
    __cxa_guard_release(&qword_2A18B7740);
  }

  if (_MergedGlobals != -1)
  {

    dispatch_once(&_MergedGlobals, &__block_literal_global);
  }
}

{
  if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
  {
    qword_2A18B78E8 = 0;
    qword_2A18B78F0 = 0;
    __cxa_guard_release(&qword_2A18B78E0);
  }

  if (_MergedGlobals_10 != -1)
  {

    dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
  }
}

{
  if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
  {
    qword_2A18B7928 = 0;
    qword_2A18B7930 = 0;
    __cxa_guard_release(&qword_2A18B7920);
  }

  if (_MergedGlobals_12 != -1)
  {

    dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
  }
}

double util::to_str<BOOL>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_297027E40(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x297027E30);
}

void sub_297027E4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<int>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_297027EC8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x297027EB8);
}

void sub_297027ED4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t defaults::bbtrace::history(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultHistorySizeMB(this);
  if (result >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFFLL;
  }

  return result;
}

double util::to_str<diag::config::DuringAPSleep>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_297027F68(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x297027F58);
}

void sub_297027F74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<unsigned int>(std::string *a1, unsigned int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_297027FE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x297027FD4);
}

void sub_297027FF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<diag::config::Recovery>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 0);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_297028074(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x297028064);
}

void sub_297028080(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *defaults::bbtrace::primary_dmc(defaults::bbtrace *this)
{
  if (config::hw::watch(this))
  {
    return "Lite";
  }

  else
  {
    return "Default";
  }
}

const char *defaults::bbtrace::secondary_dmc(defaults::bbtrace *this)
{
  v1 = capabilities::radio::ice(this);
  if (!v1)
  {
    return "None";
  }

  if (config::hw::watch(v1))
  {
    return "Lite";
  }

  return "Default";
}

uint64_t defaults::bbtrace::transport_read_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297222B30[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297222B40[v2 - 19];
  }
}

uint64_t defaults::bbtrace::transport_read_count(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  else
  {
    v2 = dword_297222B30[v1 - 1];
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(v1);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      return 4;
    }
  }

  switch(v2)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v2 <= 18)
  {
    if (v2 != 2)
    {
      if (v2 == 15 || v2 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v2 > 22)
  {
    if (v2 == 23)
    {
      return result;
    }

    if (v2 == 24)
    {
      return 86;
    }

    return 4;
  }

  if (v2 != 19)
  {
    return 15;
  }

  return result;
}

unint64_t defaults::bbtrace::bandwidth_mbps(defaults::bbtrace *this)
{
  result = capabilities::trace::defaultPeakBandwidthMbps(this);
  if (result >= 0xFFFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

double util::to_str<trace::LogMode>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_2970283C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2970283B8);
}

void sub_2970283D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double util::to_str<trace::LogLevel>(std::string *a1)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v3, 3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_29702843C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29702842CLL);
}

void sub_297028448(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t defaults::bbtrace::high_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 80;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::low_water_mark(defaults::bbtrace *this)
{
  if (capabilities::radio::ice(this))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t defaults::bbtrace::min_file_size(defaults::bbtrace *this)
{
  v1 = capabilities::radio::vendor(this);
  if ((v1 - 1) > 3)
  {
    v2 = 25;
  }

  else
  {
    v2 = dword_297222B30[v1 - 1];
  }

  v3 = capabilities::radio::dal(v1);
  if (v3)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v4;
  }

  if (v2 == 17)
  {
    return 0x80000;
  }

  if (v2 == 21 || v2 == 20)
  {
    return 61440;
  }

  capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if ((v2 - 19) > 5)
  {
    return 0x8000;
  }

  else
  {
    return dword_297222B40[v2 - 19];
  }
}

capabilities::trace *defaults::ipc::enabled(defaults::ipc *this)
{
  result = capabilities::ipc::supportsPCI(this);
  if (result)
  {

    return capabilities::trace::enabledByDefault(result);
  }

  return result;
}

uint64_t defaults::compression::mode(defaults::compression *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if ((IsInternalBuild & 1) == 0)
  {
    IsInternalBuild = TelephonyUtilIsCarrierBuild();
    if (!IsInternalBuild)
    {
      return 2;
    }
  }

  return capabilities::trace::getCompressionMode(IsInternalBuild);
}

uint64_t defaults::ttr::mode(defaults::ttr *this)
{
  result = TelephonyUtilIsInternalBuild();
  if ((result & 1) != 0 || (result = TelephonyUtilIsCarrierBuild(), result))
  {
    if (capabilities::radio::initium(result))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t defaults::ttr::supported(defaults::ttr *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

uint64_t defaults::systemlogs::mode(defaults::systemlogs *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  else
  {
    return TelephonyUtilIsCarrierBuild();
  }
}

unint64_t defaults::tracesettings::config@<X0>(void *a1@<X8>)
{
  v3 = abm::helper::asString();
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (result | 7) + 1;
    }

    v7 = operator new(v6);
    a1[1] = v5;
    a1[2] = v6 | 0x8000000000000000;
    *a1 = v7;
    a1 = v7;
  }

  else
  {
    *(a1 + 23) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }
  }

  result = memmove(a1, v3, v5);
  *(a1 + v5) = 0;
  return result;
}

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop.default");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void sub_297028BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_297029A10(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A18B7770);

  _Unwind_Resume(a1);
}

void sub_297029A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = *(v5 + 64);
  if (v8)
  {
    dispatch_release(v8);

    if (*(v5 + 55) < 0)
    {
LABEL_3:
      operator delete(*(v5 + 32));
      std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if (*(v5 + 55) < 0)
    {
      goto LABEL_3;
    }
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_297029ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_297029D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  support::ui::NotificationInfo::~NotificationInfo((v25 + 40));
  _Unwind_Resume(a1);
}

void sub_297029D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CallBackData::~CallBackData(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  if (v2)
  {
    dispatch_release(v2);
  }
}

void support::ui::NotificationInfo::~NotificationInfo(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

void __copy_helper_block_ea8_40c35_ZTSN7support2ui16NotificationInfoE112c18_ZTS12CallBackData(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    if ((*(a2 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
LABEL_6:
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  v7 = _Block_copy(*(a2 + 112));
  v8 = *(a2 + 120);
  *(a1 + 112) = v7;
  *(a1 + 120) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }
}

void sub_29702A7B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    dispatch_release(v3);
  }

  support::ui::NotificationInfo::~NotificationInfo((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_29702A7DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 40));
  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c35_ZTSN7support2ui16NotificationInfoE112c18_ZTS12CallBackData(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v2 = *(a1 + 120);
  if (v2)
  {
    dispatch_release(v2);
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 40);

  operator delete(v3);
}

void sub_29702ACB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  xpc_release(*(v26 - 72));
  _Unwind_Resume(a1);
}

void sub_29702B598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, dispatch_object_t a32)
{
  if (object)
  {
    dispatch_release(object);
  }

  CallBackData::~CallBackData(&a31);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c18_ZTS12CallBackData(std::string *a1, uint64_t a2)
{
  v4 = _Block_copy(*(a2 + 32));
  v5 = *(a2 + 40);
  a1[1].__r_.__value_.__l.__size_ = v4;
  a1[1].__r_.__value_.__r.__words[2] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v6;
  }
}

void sub_29702B6E4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c18_ZTS12CallBackData(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
}

void support::ui::showNotification(unsigned int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v8 = *(a2 + 24);
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
  }

  v6 = 0;
  support::ui::showNotification(a1, &v7, v5, &v6);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:

    return;
  }

LABEL_16:
  operator delete(v7.__r_.__value_.__l.__data_);
}

void sub_29702B8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);

  _Unwind_Resume(a1);
}

void sub_29702B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  support::ui::NotificationInfo::~NotificationInfo(va);

  _Unwind_Resume(a1);
}

void support::ui::showNotification(unsigned int a1, uint64_t a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x29EDCA608];
  v7 = a3;
  memset(&v46, 170, sizeof(v46));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *a2, *(a2 + 8));
  }

  else
  {
    v46 = *a2;
  }

  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::insert(&v46, 0, "com.apple.telephony.", 0x14uLL);
    goto LABEL_11;
  }

  if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
  {
    qword_2A18B77A8 = 0;
    qword_2A18B77B0 = 0;
    __cxa_guard_release(&qword_2A18B77A0);
  }

  if (qword_2A18B7798 == -1)
  {
    v9 = qword_2A18B77B0;
    if (!os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_14:
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "User notification requires an identifier", &buf, 2u);
    memset(&v45, 0, sizeof(v45));
    if (a1 <= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
  v9 = qword_2A18B77B0;
  if (os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

LABEL_11:
  memset(&v45, 0, sizeof(v45));
  if (a1 <= 3)
  {
LABEL_12:
    v10 = std::string::__assign_external(&v45, "BasebandServicesNotification", 0x1CuLL);
    goto LABEL_18;
  }

LABEL_15:
  if ((atomic_load_explicit(&qword_2A18B77A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B77A0))
  {
    qword_2A18B77A8 = 0;
    qword_2A18B77B0 = 0;
    __cxa_guard_release(&qword_2A18B77A0);
  }

  if (qword_2A18B7798 == -1)
  {
    v11 = qword_2A18B77B0;
    v10 = os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_125:
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a1;
    _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "User notification is not supported for caller %d", &buf, 8u);
    v37 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v46.__r_.__value_.__l.__size_;
    }

    if (!v37)
    {
      goto LABEL_113;
    }

    goto LABEL_21;
  }

  dispatch_once(&qword_2A18B7798, &__block_literal_global_0);
  v11 = qword_2A18B77B0;
  v10 = os_log_type_enabled(qword_2A18B77B0, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    goto LABEL_125;
  }

LABEL_18:
  v12 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v46.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
    goto LABEL_113;
  }

LABEL_21:
  v13 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v45.__r_.__value_.__l.__size_;
  }

  if (v13)
  {
    v14 = (a2 + 24);
    v15 = *(a2 + 32);
    if (*(a2 + 47) < 0 && v15 == 23)
    {
      v17 = **v14 == 0x72616C756C6C6543 && *(*v14 + 8) == 0x445F65757373495FLL && *(*v14 + 15) == 0x6465746365746544;
      if (v17 && (a1 != 2 || (config::hw::watch(v10) & 1) != 0))
      {
        goto LABEL_113;
      }

LABEL_79:
      v32 = *a2;
      v33 = *(a2 + 8);
      *a2 = v46;
      v46.__r_.__value_.__r.__words[0] = v32;
      *&v46.__r_.__value_.__r.__words[1] = v33;
      v48.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
      *&v33 = 0xAAAAAAAAAAAAAAAALL;
      *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
      buf = v33;
      *&v48.__r_.__value_.__l.__data_ = v33;
      *&buf = _Block_copy(v7);
      *(&buf + 1) = *a4;
      if (*(&buf + 1))
      {
        dispatch_retain(*(&buf + 1));
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *&v48.__r_.__value_.__l.__data_ = *v14;
        v48.__r_.__value_.__r.__words[2] = *(a2 + 40);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v44, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = v45;
      }

      v34 = [UserNotificationManager sharedInstance:&v44];
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *a2, *(a2 + 8));
      }

      else
      {
        v41 = *a2;
      }

      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *&v42.__r_.__value_.__l.__data_ = *v14;
        v42.__r_.__value_.__r.__words[2] = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v43, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v43 = *(a2 + 48);
      }

      v38 = _Block_copy(buf);
      object = *(&buf + 1);
      if (*(&buf + 1))
      {
        dispatch_retain(*(&buf + 1));
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v48;
      }

      [v34 showNotification:&v41 withCallBackData:&v38];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_107:
          if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_108;
          }

LABEL_120:
          operator delete(v41.__r_.__value_.__l.__data_);
LABEL_108:

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_110:
              v35 = *(&buf + 1);
              if (!*(&buf + 1))
              {
LABEL_112:

                goto LABEL_113;
              }

LABEL_111:
              dispatch_release(v35);
              goto LABEL_112;
            }
          }

          else if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

          operator delete(v48.__r_.__value_.__l.__data_);
          v35 = *(&buf + 1);
          if (!*(&buf + 1))
          {
            goto LABEL_112;
          }

          goto LABEL_111;
        }
      }

      else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

      operator delete(v42.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_120;
    }

    v18 = *(a2 + 47);
    if ((v18 & 0x80) != 0)
    {
      if (v15 != 20)
      {
        if (v15 == 22)
        {
          v22 = *(*v14 + 14);
          v23 = **v14 == 0x6E6F6870656C6554 && *(*v14 + 8) == 0x535F706D75445F79;
          v24 = 0x646574726174535FLL;
          goto LABEL_72;
        }

LABEL_63:
        if ((v18 & 0x80) == 0 || v15 != 27)
        {
          goto LABEL_79;
        }

        v22 = *(*v14 + 19);
        v23 = **v14 == 0x6E6F6870656C6554 && *(*v14 + 8) == 0x495F706D75445F79 && *(*v14 + 16) == 0x696369666675736ELL;
        v24 = 0x746E656963696666;
LABEL_72:
        if (!v23 || v22 != v24)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      v19 = *v14;
    }

    else
    {
      v19 = (a2 + 24);
      if (v18 != 20)
      {
        if (v18 != 22)
        {
          goto LABEL_79;
        }

        v20 = *v14 == 0x6E6F6870656C6554 && *(a2 + 32) == 0x535F706D75445F79;
        if (!v20 || *(a2 + 38) != 0x646574726174535FLL)
        {
          goto LABEL_79;
        }

        goto LABEL_77;
      }
    }

    v25 = *v19;
    v26 = v19[1];
    v27 = *(v19 + 4);
    if (v25 == 0x6E6F6870656C6554 && v26 == 0x525F706D75445F79 && v27 == 2036621669)
    {
LABEL_77:
      if ((TelephonyUtilIsInternalBuild() & 1) == 0 && !TelephonyUtilIsCarrierBuild())
      {
        goto LABEL_113;
      }

      goto LABEL_79;
    }

    goto LABEL_63;
  }

LABEL_113:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_117:
    operator delete(v46.__r_.__value_.__l.__data_);
    goto LABEL_115;
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_117;
  }

LABEL_115:

  v36 = *MEMORY[0x29EDCA608];
}

void sub_29702C0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (object)
  {
    dispatch_release(object);
  }

  support::ui::NotificationInfo::~NotificationInfo(&a15);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  CallBackData::~CallBackData((v44 - 112));
  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_0()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "support.ui");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      if (*(v1 + 95) < 0)
      {
        operator delete(*(v1 + 72));
      }

      v3 = *(v1 + 64);
      if (v3)
      {
        dispatch_release(v3);
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,CallBackData>,std::__map_value_compare<std::string,std::__value_type<std::string,CallBackData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CallBackData>>>::destroy(*(a1 + 1));
    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t asString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v4;
  v34[8] = v4;
  v34[5] = v4;
  v34[6] = v4;
  v34[3] = v4;
  v34[4] = v4;
  v34[1] = v4;
  v34[2] = v4;
  v33 = v4;
  v34[0] = v4;
  *__p = v4;
  v32 = v4;
  v29 = v4;
  *__src = v4;
  v27 = v4;
  v28 = v4;
  v26 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Time: ", 6);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; Mode: ", 8);
  v11 = MEMORY[0x29C26BDF0](v10, *(a1 + 24));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; Action: ", 10);
  v15 = *(a1 + 32);
  v14 = a1 + 32;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
  if ((BYTE8(v33) & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < __src[1])
    {
      *&v33 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
    v19 = v20 - __src[0];
    if ((v20 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((BYTE8(v33) & 8) == 0)
    {
      v19 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v21 = *(&v28 + 1);
    v19 = *(&v29 + 1) - *(&v28 + 1);
    if (*(&v29 + 1) - *(&v28 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v23 = operator new(v22);
    *(a2 + 1) = v19;
    *(a2 + 2) = v22 | 0x8000000000000000;
    *a2 = v23;
    a2 = v23;
    goto LABEL_26;
  }

  a2[23] = v19;
  if (v19)
  {
LABEL_26:
    memmove(a2, v21, v19);
  }

LABEL_27:
  a2[v19] = 0;
  *&v26 = *MEMORY[0x29EDC9528];
  v24 = *(MEMORY[0x29EDC9528] + 72);
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v27 = v24;
  *(&v27 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v27 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26C030](v34);
}

void sub_29702CB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26C030](v9 + 128);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C26BF30](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_29702CE88(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C26C030](v1);
  _Unwind_Resume(a1);
}

void BBLogTracker::addLog(uint64_t **a1, __int128 *a2, int a3, uint64_t a4)
{
  v13 = a3;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(a2, &v13, a4, &v11);
  v14 = a2;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v14);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[8];
  v6[7] = v8;
  v6[8] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v12;
  if (v12)
  {
    if (!atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

uint64_t *BBLogTracker::getLog@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  result = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>(a1, a2);
  if ((a1 + 8) != result)
  {
    v7 = result[7];
    v6 = result[8];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v6;
  }

  return result;
}

uint64_t *BBLogTracker::limitLogs(uint64_t *this, unsigned int a2)
{
  v2 = a2;
  if (this[2] > a2)
  {
    v3 = this;
    do
    {
      this = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(v3, *v3);
    }

    while (v3[2] > v2);
  }

  return this;
}

void BBLogTracker::getLastLog(BBLogTracker *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (!*(this + 2))
  {
    return;
  }

  if (a2)
  {
    v45.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v45.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v45, 0);
    tv_sec = v45.tv_sec;
    tv_usec = v45.tv_usec;
    if (v45.tv_usec >= 0)
    {
      v8 = v45.tv_usec;
    }

    else
    {
      v8 = (v45.tv_usec + 1000000);
    }

    memset(v44, 170, sizeof(v44));
    Timestamp::Timestamp(v44);
    if (v44[1])
    {
      v9 = v44[1];
      while (1)
      {
        while (1)
        {
          v11 = v9;
          v12 = *(v9 + 32);
          if (v12 < 1)
          {
            break;
          }

          v9 = *v11;
          v10 = v11;
          if (!*v11)
          {
            goto LABEL_21;
          }
        }

        if ((v12 & 0x80000000) == 0)
        {
          break;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = v11 + 1;
          goto LABEL_21;
        }
      }

      v19 = v11;
    }

    else
    {
      v10 = &v44[1];
      v11 = &v44[1];
LABEL_21:
      v19 = operator new(0x38uLL);
      v19[8] = 0;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      *v19 = 0;
      *(v19 + 1) = 0;
      *(v19 + 2) = v11;
      *v10 = v19;
      if (*v44[0])
      {
        v44[0] = *v44[0];
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v44[1], v19);
      ++v44[2];
    }

    *(v19 + 5) = tv_sec - a2 + (tv_usec >> 31);
    *(v19 + 6) = v8 | 0xAAAAAAAA00000000;
    v22 = *(this + 1);
    v21 = (this + 8);
    v20 = v22;
    if (v22)
    {
      do
      {
        v23 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v24 = v21;
      do
      {
        v23 = v24[2];
        v16 = *v23 == v24;
        v24 = v23;
      }

      while (v16);
    }

    Timestamp::asString(v44, 0, 9, v42);
    v27 = v23[4];
    v26 = v23 + 4;
    v25 = v27;
    v28 = *(v26 + 23);
    if (v28 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    if (v28 >= 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v26[1];
    }

    v31 = v43;
    v32 = v42[0];
    if ((v43 & 0x80u) == 0)
    {
      v33 = v42;
    }

    else
    {
      v33 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v34 = v43;
    }

    else
    {
      v34 = v42[1];
    }

    if (v34 >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = v34;
    }

    v36 = memcmp(v29, v33, v35);
    if (v36)
    {
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v30 >= v34)
    {
LABEL_46:
      v37 = 1;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_48:
        if (v37)
        {
          v38 = *v21;
          if (*v21)
          {
            do
            {
              v39 = v38;
              v38 = v38[1];
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v21[2];
              v16 = *v39 == v21;
              v21 = v39;
            }

            while (v16);
          }

          v41 = v39[7];
          v40 = v39[8];
          if (v40)
          {
            atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
          }

          *a3 = v41;
          a3[1] = v40;
        }

        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v44[1]);
        return;
      }

LABEL_47:
      operator delete(v32);
      goto LABEL_48;
    }

    v37 = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v14 = this + 8;
  v13 = *(this + 1);
  if (v13)
  {
    do
    {
      v15 = v13;
      v13 = *(v13 + 1);
    }

    while (v13);
  }

  else
  {
    do
    {
      v15 = *(v14 + 2);
      v16 = *v15 == v14;
      v14 = v15;
    }

    while (v16);
  }

  v18 = *(v15 + 7);
  v17 = *(v15 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v18;
  a3[1] = v17;
}

void sub_29702D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(va, v5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C26BDA0](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C26BDB0](v14);
  return a1;
}

void sub_29702D7E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C26BDB0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29702D7C0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_29702DA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(uint64_t a1@<X1>, int *a2@<X2>, uint64_t a3@<X3>, std::string **a4@<X8>)
{
  v8 = operator new(0x50uLL);
  v9 = v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = &unk_2A1E23B78;
  v10 = v8 + 1;
  v11 = *a2;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8 + 1, *a1, *(a1 + 8));
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *a1;
    v8[1].__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  LODWORD(v9[2].__r_.__value_.__l.__data_) = v11;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 56), *a3, *(a3 + 8));
  }

  else
  {
    *&v9[2].__r_.__value_.__r.__words[1] = *a3;
    v9[3].__r_.__value_.__r.__words[0] = *(a3 + 16);
  }

  *a4 = v10;
  a4[1] = v9;
}

void sub_29702DB18(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LogInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E23B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<LogInfo>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 24);

  operator delete(v2);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    while (1)
    {
      v11 = v6;
      v14 = v6[4];
      v12 = v6 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v20 = memcmp(v16, v9, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else if (v17 >= v10)
        {
          return v11;
        }

        v6 = v11[1];
        if (!v6)
        {
          v7 = v11 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 >= v17)
        {
          goto LABEL_22;
        }

LABEL_8:
        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = a1 + 1;
LABEL_29:
  v21 = operator new(0x48uLL);
  v22 = v21;
  v23 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 32), *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    *(v21 + 6) = *(v23 + 2);
    *(v21 + 2) = v24;
  }

  v22[7] = 0;
  v22[8] = 0;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v11;
  *v7 = v22;
  v25 = **a1;
  if (v25)
  {
    *a1 = v25;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v22);
  a1[2] = (a1[2] + 1);
  return v22;
}

void sub_29702DDA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 64);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 55) < 0)
  {
LABEL_12:
    operator delete(*(a2 + 32));
  }

LABEL_13:
  operator delete(a2);
  return v4;
}

atomic_ullong *ABMServer::create_default_global@<X0>(atomic_ullong **a1@<X8>)
{
  v3 = operator new(0x10uLL);
  *v3 = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v4);
  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(v3, v4);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2A1E23F58;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void sub_29702E000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMServer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29702E014(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void ABMServer::ABMServer(ABMServer *this)
{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

atomic_ullong *ABMServerInternal::create@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v3);

  return std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(a1, v3);
}

void ABMServer::init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    v4 = a3;
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    a3 = v4;
  }

  else
  {
    __p = *a2;
  }

  ABMServerInternal::init(v3, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29702E1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 8;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_3;
  v6[4] = a1;
  v6[5] = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_59;
  block[4] = v4;
  block[5] = &v8;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  dispatch_sync(v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

uint64_t ABMServerInternal::start(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to start server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E23C30;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_59;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::stop(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to stop server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E23C68;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_59;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::shutdown(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to shutdown server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v6 = dispatch_group_create();
  a2 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  dispatch_retain(v6);
  dispatch_group_enter(a2);
  v5 = a2;
LABEL_8:
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke;
  v11[3] = &unk_2A1E23CA0;
  v11[4] = &v13;
  v11[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v17 = v11;
  *buf = MEMORY[0x29EDCA5F8];
  v19 = 0x40000000;
  v20 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v21 = &__block_descriptor_tmp_59;
  v22 = this + 8;
  v23 = &v17;
  v7 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_sync(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  dispatch_group_leave(v9);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_16:
  _Block_object_dispose(&v13, 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v8;
}

void ABMServer::broadcast(uint64_t *a1, uint64_t a2, const void **a3, const void **a4)
{
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v7 = *a3;
    v10 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *a2;
  v7 = *a3;
  v10 = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  if (*a4)
  {
    v8 = _Block_copy(*a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  ABMServerInternal::broadcast(v6, &v11, &v10, &v9);
  if (v8)
  {
    _Block_release(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_29702EA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    _Block_release(v16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::broadcast(uint64_t a1, uint64_t a2, const void **a3, void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal9broadcastENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_29_0;
  v9[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ABMServerInternal::ABMServerInternal(ABMServerInternal *this)
{
  *this = &unk_2A1E23BC8;
  v12 = 11;
  strcpy(__p, "server.main");
  object = 0;
  v10 = xpc_null_create();
  ctu::XpcServer::XpcServer();
  xpc_release(v10);
  v10 = 0;
  *this = &unk_2A1E23BC8;
  ctu::OsLogContext::OsLogContext(__p, "com.apple.telephony.abm", "server.main");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 72, &object);
  MEMORY[0x29C26B020](&object);
  ctu::OsLogContext::~OsLogContext(__p);
  *this = &unk_2A1E23BC8;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = this + 88;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 3;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v2 = operator new(0x38uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E23FF8;
  Registry::Registry(&v2[1]);
  *(this + 20) = v4;
  *(this + 21) = v2;
  shared_owners = v2[1].__shared_owners_;
  if (!shared_owners)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (shared_owners->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_7:
  _ZNSt3__115allocate_sharedB8ne200100I16ABMServerFactoryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(__p);
  v7 = __p[0];
  v6 = __p[1];
  *(this + 22) = __p[0];
  *(this + 23) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1E2B168;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8[3] = v7;
    v8[4] = v6;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v8[3] = v7;
    v8[4] = 0;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
  }

  *(this + 13) = 0u;
  *(this + 14) = 0u;
}

void sub_29702EE64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v2 + 176));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v2 + 160));
  if (*v6)
  {
    dispatch_group_leave(*v6);
    if (*v6)
    {
      dispatch_release(*v6);
    }
  }

  if (v2[127] < 0)
  {
    operator delete(*v5);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*v4);
  MEMORY[0x29C26B020](v3);
  ctu::XpcServer::~XpcServer(v2);
  _Unwind_Resume(a1);
}

void sub_29702EF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a13);
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x29702EF10);
}

void ABMServerInternal::~ABMServerInternal(void **this)
{
  *this = &unk_2A1E23BC8;
  ABMServerInternal::finishShutdown_sync(this);
  v2 = this[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[27];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[25];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[23];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this[21];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = this[17];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = this[17];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(this[11]);
  MEMORY[0x29C26B020](this + 9);

  ctu::XpcServer::~XpcServer(this);
}

{
  ABMServerInternal::~ABMServerInternal(this);

  operator delete(v1);
}

void ABMServerInternal::finishShutdown_sync(ABMServerInternal *this)
{
  v2 = (this + 88);
  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*(this + 11));
  *(this + 10) = v2;
  *(this + 12) = 0;
  *v2 = 0;
  group = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownGlobalServices(*(this + 28), &group);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  Listener_sync = ctu::XpcServer::getListener_sync(this);
  xpc_connection_cancel(*Listener_sync);
  object = xpc_null_create();
  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ABMServerInternal::changeState_sync(this, 5);
  (*(**(this + 26) + 40))(*(this + 26), 5);
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM shutdown completed ---------", v5, 2u);
  }

  ABMServerInternal::stopRunLoop_sync(this);
  if (group)
  {
    dispatch_release(group);
  }
}

void sub_29702F2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, dispatch_object_t a12)
{
  xpc_release(object);
  if (a12)
  {
    dispatch_release(a12);
  }

  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to init server", buf, 2u);
  }

  v4 = *(v2 + 192);
  v5 = *(a1 + 40);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v40 = v7;
  v41 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ABMServerRegistryBuilder::setupQMIServer(v4, (v2 + 160), &v40);
  v8 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  ABMServerRegistryBuilder::setupAdaptiveTimerService(*(v2 + 192), (v2 + 160));
  if (capabilities::radio::vendor(v9) == 1)
  {
    _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(buf);
    v10 = *buf;
    memset(buf, 0, 16);
    v11 = *(v2 + 216);
    *(v2 + 208) = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = buf[1];
    if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  ABMServerInternal::startRunLoop_sync(v2);
  object = xpc_connection_create_mach_service(kABMDefaultServiceName[0], 0, 1uLL);
  if (!object)
  {
    object = xpc_null_create();
  }

  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ctu::XpcServer::startListener_sync(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kAppleBasebandManagerDaemonReady", 0, 0, 1u);
  v14 = (a1 + 48);
  v15 = (v2 + 104);
  if (v2 + 104 != a1 + 48)
  {
    v16 = *(a1 + 71);
    if (*(v2 + 127) < 0)
    {
      if (v16 >= 0)
      {
        v18 = (a1 + 48);
      }

      else
      {
        v18 = *(a1 + 48);
      }

      if (v16 >= 0)
      {
        v19 = *(a1 + 71);
      }

      else
      {
        v19 = *(a1 + 56);
      }

      std::string::__assign_no_alias<false>(v15, v18, v19);
    }

    else if ((*(a1 + 71) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v15, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v17 = *&v14->isa;
      *(v2 + 120) = *(a1 + 64);
      *v15 = v17;
    }
  }

  v20 = *(v2 + 72);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 71) < 0)
    {
      v14 = v14->isa;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v14;
    _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I host: %s", buf, 0xCu);
  }

  ABMServerInternal::changeState_sync(v2, 3u);
  v22 = *(v2 + 168);
  v21 = *(v2 + 176);
  aBlock[5] = *(v2 + 160);
  v38 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v21)(buf);
  v23 = *buf;
  memset(buf, 0, 16);
  v24 = *(v2 + 232);
  *(v2 + 224) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = buf[1];
  if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v26 = *(v2 + 224);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_2;
  aBlock[4] = v2;
  v27 = _Block_copy(aBlock);
  v28 = v27;
  if (!v27)
  {
    v30 = *(v26 + 128);
    *(v26 + 128) = 0;
    if (!v30)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v29 = _Block_copy(v27);
  v30 = *(v26 + 128);
  *(v26 + 128) = v29;
  if (v30)
  {
LABEL_48:
    _Block_release(v30);
  }

LABEL_49:
  if (v28)
  {
    _Block_release(v28);
  }

  (*(**(v2 + 224) + 16))(*(v2 + 224));
  buf[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapGlobalServices(*(v2 + 224), buf);
  dispatch_group_wait(buf[0], 0xFFFFFFFFFFFFFFFFLL);
  v36 = 6;
  v31 = (*(**(v2 + 208) + 48))(*(v2 + 208), &v36);
  if (v36 > 2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if ((v32 & 1) == 0)
  {
    v33 = *(v2 + 72);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 0;
      _os_log_impl(&dword_296FF7000, v33, OS_LOG_TYPE_DEFAULT, "#I Previous shutdown was not clean", v35, 2u);
    }

    (*(**(v2 + 208) + 32))(*(v2 + 208));
    (*(**(v2 + 208) + 40))(*(v2 + 208), 3);
  }

  if (buf[0])
  {
    dispatch_release(buf[0]);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29702F8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::startRunLoop_sync(ABMServerInternal *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__sig) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Starting ABM RunLoop", &buf, 2u);
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_15;
  v6[4] = this;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf.__opaque[24] = v4;
  *&buf.__opaque[40] = v4;
  *&buf.__sig = v4;
  *&buf.__opaque[8] = v4;
  pthread_attr_init(&buf);
  pthread_attr_set_qos_class_np(&buf, QOS_CLASS_USER_INITIATED, 0);
  pthread_create(this + 19, &buf, sServerRunLoopMain, v6);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (object)
  {
    dispatch_release(object);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_29702FACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void ABMServerInternal::changeState_sync(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = to_string(*(a1 + 128));
    *buf = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = to_string(a2);
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I State change: %s -> %s", buf, 0x16u);
  }

  *(a1 + 128) = a2;
  v6 = *(a1 + 136);
  if (v6)
  {
    v8 = *(a1 + 136);
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    ABMServerInternal::checkShutdown_sync(a1, &v8);
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29702FC00(_Unwind_Exception *a1)
{
  dispatch_group_leave(v1);
  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 128);
  if (v2 > 5)
  {
    return;
  }

  if (((1 << v2) & 0x35) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  ABMServerInternal::changeState_sync(*(a1 + 40), 0);
  v4 = *MEMORY[0x29EDBEA58];
  v5 = strlen(*MEMORY[0x29EDBEA58]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v13 = v8 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v13) = v5;
    v7 = __dst;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  memmove(v7, v4, v6);
LABEL_16:
  *(v6 + v7) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  v9 = a1;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
    v9 = a1;
  }

  *(*(*(v9 + 32) + 8) + 24) = 1;
  v10 = *(v9 + 48);
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  ABMServerInternal::start_sync(v1, &v11);
  if (v10)
  {
    dispatch_group_leave(v10);

    dispatch_release(v10);
  }
}

void sub_29702FE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::broadcastServerState_sync(void *a1, uint64_t a2)
{
  cf = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = Mutable;
    std::string::__init_copy_ctor_external(&v23, v7, v8);
    Mutable = v9;
  }

  else
  {
    v23 = *a2;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *MEMORY[0x29EDBE658], &v23, v4, v6);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x29EDBED30];
  v11 = strlen(*MEMORY[0x29EDBED30]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v13 = operator new(v15);
    __dst[1] = v12;
    v21 = v15 | 0x8000000000000000;
    __dst[0] = v13;
LABEL_17:
    memmove(v13, v10, v12);
    *(v12 + v13) = 0;
    v14 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v21) = v11;
  v13 = __dst;
  if (v11)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v14 = cf;
  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_18:
  v16 = CFGetTypeID(v14);
  if (v16 == CFDictionaryGetTypeID())
  {
    v19 = v14;
    CFRetain(v14);
    v17 = v14;
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  v19 = 0;
LABEL_21:
  v18 = 0;
  ABMServerInternal::broadcast_sync(a1, __dst, &v19, &v18);
  if (v17)
  {
    CFRelease(v17);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
    if (!v14)
    {
      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  CFRelease(v14);
}

void sub_297030038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

void ABMServerInternal::start_sync(uint64_t a1, NSObject **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    abm::asString();
    v5 = v19 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v21 = v5;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Starting ABM with profile: %s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**(a1 + 208) + 40))(*(a1 + 208), 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224));
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapDynamicServices(*(a1 + 224), __p);
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = __p[0];
  v11 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_16_0;
  block[4] = a1;
  block[5] = v7;
  v16 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *a2;
  group = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v10, v11, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v13 = v16;
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_18:
  if (__p[0])
  {
    dispatch_release(__p[0]);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29703034C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 48);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(v1 + 128);
  if (v2 <= 5)
  {
    v4 = 1;
    if (((1 << v2) & 0x15) != 0)
    {
      v4 = 0;
LABEL_21:
      *(*(a1[4] + 8) + 24) = v4;
      return;
    }

    if (((1 << v2) & 0x28) != 0)
    {
      goto LABEL_21;
    }

    ABMServerInternal::changeState_sync(a1[5], 2u);
    v5 = *MEMORY[0x29EDBEA60];
    v6 = strlen(*MEMORY[0x29EDBEA60]);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v6 | 7) + 1;
      }

      v8 = operator new(v9);
      __dst[1] = v7;
      v13 = v9 | 0x8000000000000000;
      __dst[0] = v8;
    }

    else
    {
      HIBYTE(v13) = v6;
      v8 = __dst;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    memmove(v8, v5, v7);
LABEL_14:
    *(v7 + v8) = 0;
    ABMServerInternal::broadcastServerState_sync(v1, __dst);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }

    v10 = a1[6];
    v11 = v10;
    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    ABMServerInternal::stop_sync(v1, &v11);
    if (v10)
    {
      dispatch_group_leave(v10);
      dispatch_release(v10);
    }

    v4 = 1;
    goto LABEL_21;
  }
}

void sub_29703057C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::stop_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 2);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownDynamicServices(*(a1 + 224), &v15);
  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v15;
  v9 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = a1;
  block[5] = v5;
  v13 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = *a2;
  group = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v8, v9, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_12:
  if (v15)
  {
    dispatch_release(v15);
  }
}

void sub_2970307A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  *(*(a1[4] + 8) + 24) = ABMServerInternal::checkShutdown_sync(v3, &v4);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_297030850(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ABMServerInternal::checkShutdown_sync(ABMServerInternal *this, dispatch_object_t *a2)
{
  v3 = *(this + 128);
  result = 1;
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      v5 = *a2;
      if (*a2)
      {
        dispatch_retain(*a2);
        dispatch_group_enter(v5);
      }

      v6 = *(this + 17);
      *(this + 17) = v5;
      if (!v6)
      {
        return 1;
      }

      dispatch_group_leave(v6);
      v7 = v6;
      goto LABEL_30;
    }

    ABMServerInternal::changeState_sync(this, 4);
    v10 = *MEMORY[0x29EDBEA60];
    v11 = strlen(*MEMORY[0x29EDBEA60]);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      __dst[1] = v12;
      v18 = v14 | 0x8000000000000000;
      __dst[0] = v13;
    }

    else
    {
      HIBYTE(v18) = v11;
      v13 = __dst;
      if (!v11)
      {
LABEL_24:
        *(v12 + v13) = 0;
        ABMServerInternal::broadcastServerState_sync(this, __dst);
        v15 = a2;
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__dst[0]);
          v15 = a2;
        }

        v8 = *v15;
        v16 = v8;
        if (v8)
        {
          dispatch_retain(v8);
          dispatch_group_enter(v8);
        }

        ABMServerInternal::shutdown_sync(this, &v16);
        if (!v8)
        {
          return 1;
        }

        goto LABEL_29;
      }
    }

    memmove(v13, v10, v12);
    goto LABEL_24;
  }

  switch(v3)
  {
    case 3:
      ABMServerInternal::finishShutdown_sync(this);
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (!v8)
      {
        return 1;
      }

      goto LABEL_29;
    case 4:
      return 0;
    case 5:
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (v8)
      {
LABEL_29:
        dispatch_group_leave(v8);
        v7 = v8;
LABEL_30:
        dispatch_release(v7);
        return 1;
      }

      break;
  }

  return result;
}

void sub_297030A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::shutdown_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 4);
  v4 = *a2;
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  ABMServerInternal::stop_sync(a1, &v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297030B54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

char *to_string(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    v3 = GetOsLogContext()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v7) = a1;
      _os_log_fault_impl(&dword_296FF7000, v3, OS_LOG_TYPE_FAULT, "Unknown server state %d", buf, 8u);
    }

    v4 = GetOsLogContext()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v7 = "ABM ASSERT";
      v8 = 2080;
      v9 = "false";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/ABMServer.cpp";
      v12 = 1024;
      v13 = 77;
      _os_log_fault_impl(&dword_296FF7000, v4, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  result = off_29EE63818[a1];
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  pthread_setname_np("ABM.Server.RunLoop");
  pthread_set_qos_class_self_np(QOS_CLASS_DEFAULT, 0);
  *(v2 + 144) = CFRunLoopGetCurrent();
  dispatch_group_leave(*(a1 + 40));
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I ABM RunLoop Started", v4, 2u);
  }
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t sServerRunLoopMain(void (**a1)(void))
{
  memset(&context, 0, sizeof(context));
  v2 = CFRunLoopSourceCreate(*MEMORY[0x29EDB8ED8], 0, &context);
  if (!v2)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18B7680 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
      v7 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create dummySource for ABM server runloop", v9, 2u);
    return 0;
  }

  v3 = v2;
  Current = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x29EDB8FC0];
  CFRunLoopAddSource(Current, v3, *MEMORY[0x29EDB8FC0]);
  a1[2](a1);
    ;
  }

  v6 = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(v6, v3, v5);
  CFRelease(v3);
  return 0;
}

void ABMServerInternal::stopRunLoop_sync(ABMServerInternal *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping ABM RunLoop", v6, 2u);
  }

  usleep(0x7A120u);
  CFRunLoopStop(*(this + 18));
  *(this + 18) = 0;
  v3 = pthread_join(*(this + 19), 0);
  *(this + 19) = 0;
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopped ABM RunLoop: %d", v6, 8u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ABMServerInternal::changeState_sync(v1, 1u);
  v2 = *MEMORY[0x29EDBE940];
  v3 = strlen(*MEMORY[0x29EDBE940]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v14 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_9:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
    isBootSessionChanged = sys::isBootSessionChanged(v9);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  else
  {
    isBootSessionChanged = sys::isBootSessionChanged(v7);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  if ((sys::updateBootSessionUUID(isBootSessionChanged) & 1) == 0)
  {
    v10 = *(v1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Failed to update session id", v12, 2u);
    }
  }

  return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
}

void sub_297031174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  if (*(v2 + 128) == 4)
  {
    ABMServerInternal::finishShutdown_sync(v2);
  }

  else
  {
    ABMServerInternal::changeState_sync(v2, 3);
    (*(**(v1 + 26) + 40))(*(v1 + 26), 3);
    v4 = *(v1 + 9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", &buf, 2u);
    }
  }

  *(&buf.__pn_.__r_.__value_.__s + 23) = 17;
  strcpy(&buf, "/tmp/abm.shutdown");
  if (remove(&buf, v3))
  {
    unlink(&buf);
  }

  v5 = *MEMORY[0x29EDBE948];
  v6 = strlen(*MEMORY[0x29EDBE948]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v20 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_15;
  }

  HIBYTE(v20) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_15:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  v10 = *MEMORY[0x29EDBE980];
  v11 = strlen(*MEMORY[0x29EDBE980]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_29;
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    __p[1] = v12;
    v18 = v14 | 0x8000000000000000;
    __p[0] = v13;
    goto LABEL_26;
  }

  HIBYTE(v18) = v11;
  v13 = __p;
  if (v11)
  {
LABEL_26:
    memmove(v13, v10, v12);
  }

  *(v12 + v13) = 0;
  v15 = 0;
  v16 = 0;
  ABMServerInternal::broadcast_sync(v1, __p, &v16, &v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2970314D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::finishStop_sync(ABMServerInternal *this)
{
  ABMServerInternal::changeState_sync(this, 3u);
  (*(**(this + 26) + 40))(*(this + 26), 3);
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", v3, 2u);
  }
}

void *ABMServerInternal::getClientState_sync@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 88);
  result = (a1 + 88);
  v4 = v5;
  if (v5)
  {
    v6 = *a2;
    v7 = result;
    do
    {
      v8 = v4[4];
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = v4[v10];
    }

    while (v4);
    if (v7 != result && v6 >= v7[4])
    {
      v12 = v7[5];
      v11 = v7[6];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v12;
      a3[1] = v11;
    }
  }

  return result;
}

void ABMServerInternal::handleServerError_sync(uint64_t a1, xpc::object *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 128);
  if (v2 != 3 && v2 != 5)
  {
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, a2);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Server error: %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void ABMServerInternal::handleNewClient_sync(uint64_t a1@<X0>, xpc::object *a2@<X1>, const void **a3@<X8>)
{
  v43[3] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if ((*(a1 + 128) & 0xFE) == 4)
  {
    v6 = *(a1 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v7 = MEMORY[0x29C26CD90](*a2);
    memset(__p, 170, sizeof(__p));
    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v8 | 7) + 1;
      }

      v10 = operator new(v19);
      __p[1] = v9;
      __p[2] = (v19 | 0x8000000000000000);
      __p[0] = v10;
    }

    else
    {
      HIBYTE(__p[2]) = v8;
      v10 = __p;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    memcpy(v10, v7, v9);
LABEL_23:
    *(v9 + v10) = 0;
    free(v7);
    v20 = SHIBYTE(__p[2]);
    v21 = __p[0];
    v22 = to_string(*(a1 + 128));
    v23 = __p;
    if (v20 < 0)
    {
      v23 = v21;
    }

    *buf = 136315394;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Rejecting new client %s because server state is '%s'", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_59;
  }

  xpc::object::to_string(__p, a2);
  v11 = operator new(0x38uLL);
  v12 = v11;
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    v11->__r_.__value_.__r.__words[2] = __p[2];
  }

  v12[1].__r_.__value_.__s.__data_[0] = 0;
  v12[2].__r_.__value_.__r.__words[0] = 0;
  v12[1].__r_.__value_.__r.__words[2] = 0;
  v12[1].__r_.__value_.__l.__size_ = &v12[1].__r_.__value_.__r.__words[2];
  *buf = v12;
  v43[0] = v12;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E2D130;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v12;
  *&buf[8] = v13;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  v15 = MEMORY[0x29C26CD90](*a2);
  memset(__p, 170, sizeof(__p));
  v16 = strlen(v15);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v16 | 7) + 1;
    }

    v18 = operator new(v24);
    __p[1] = v17;
    __p[2] = (v24 | 0x8000000000000000);
    __p[0] = v18;
    goto LABEL_31;
  }

  HIBYTE(__p[2]) = v16;
  v18 = __p;
  if (v16)
  {
LABEL_31:
    memcpy(v18, v15, v17);
  }

  *(v17 + v18) = 0;
  free(v15);
  v25 = __p;
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[0];
  }

  LODWORD(v43[0]) = 136315138;
  *(v43 + 4) = v25;
  _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEFAULT, "#I New client: %s", v43, 0xCu);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_35:
    v26 = *a2;
    v28 = (a1 + 88);
    v27 = *(a1 + 88);
    if (v27)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  v26 = *a2;
  v28 = (a1 + 88);
  v27 = *(a1 + 88);
  if (!v27)
  {
LABEL_36:
    v29 = v28;
LABEL_44:
    v31 = operator new(0x38uLL);
    v31[4] = v26;
    if (v26)
    {
      xpc_retain(v26);
    }

    else
    {
      v31[4] = xpc_null_create();
    }

    v31[5] = 0;
    v31[6] = 0;
    *v31 = 0;
    v31[1] = 0;
    v31[2] = v29;
    *v28 = v31;
    v32 = **(a1 + 80);
    if (v32)
    {
      *(a1 + 80) = v32;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v31);
    ++*(a1 + 96);
    v34 = *buf;
    v33 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  while (1)
  {
LABEL_40:
    while (1)
    {
      v29 = v27;
      v30 = v27[4];
      if (v30 <= v26)
      {
        break;
      }

      v27 = *v29;
      v28 = v29;
      if (!*v29)
      {
        goto LABEL_44;
      }
    }

    if (v30 >= v26)
    {
      break;
    }

    v27 = v29[1];
    if (!v27)
    {
      v28 = v29 + 1;
      goto LABEL_44;
    }
  }

  v31 = v29;
  v34 = *buf;
  v33 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_51;
  }

LABEL_50:
  atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
LABEL_51:
  v35 = v31[6];
  v31[5] = v34;
  v31[6] = v33;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke;
  v40[3] = &__block_descriptor_tmp_21;
  v40[4] = a1;
  v36 = _Block_copy(v40);
  v37 = *a3;
  *a3 = v36;
  if (v37)
  {
    _Block_release(v37);
  }

  v38 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_59:
  v39 = *MEMORY[0x29EDCA608];
}