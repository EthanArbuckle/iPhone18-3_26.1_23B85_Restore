@interface SKGGraphSpecification
- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain;
- (SKGGraphSpecification)init;
@end

@implementation SKGGraphSpecification

- (SKGGraphSpecification)init
{
  v4.receiver = self;
  v4.super_class = SKGGraphSpecification;
  v2 = [(MAGraphSpecification *)&v4 init];
  if (v2)
  {
    [(MAGraphSpecification *)v2 setDefaultNodeClass:objc_opt_class()];
    [(MAGraphSpecification *)v2 setDefaultEdgeClass:objc_opt_class()];
  }

  return v2;
}

- (Class)nodeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  labelCopy = label;
  v5 = +[SKGUserNode label];
  v6 = [labelCopy isEqual:v5];

  if (v6)
  {
    v7 = off_27893BDF0;
  }

  else
  {
    v8 = +[SKGPersonNode label];
    v9 = [labelCopy isEqual:v8];

    if (v9)
    {
      v7 = off_27893BD08;
    }

    else
    {
      v10 = +[SKGContactNode label];
      v11 = [labelCopy isEqual:v10];

      if (v11)
      {
        v7 = off_27893BB68;
      }

      else
      {
        v12 = +[SKGPhotoNode label];
        v13 = [labelCopy isEqual:v12];

        if (v13)
        {
          v7 = off_27893BD60;
        }

        else
        {
          v14 = +[SKGEntityNode label];
          v15 = [labelCopy isEqual:v14];

          if (v15)
          {
            v7 = off_27893BC18;
          }

          else
          {
            v16 = +[SKGDisplayNameNode label];
            v17 = [labelCopy isEqual:v16];

            if (v17)
            {
              v7 = off_27893BBA0;
            }

            else
            {
              v18 = +[SKGNameNode label];
              v19 = [labelCopy isEqual:v18];

              if (v19)
              {
                v7 = off_27893BCD0;
              }

              else
              {
                v20 = +[SKGNameKeyNode label];
                v21 = [labelCopy isEqual:v20];

                if (v21)
                {
                  v7 = off_27893BCC0;
                }

                else
                {
                  v22 = +[SKGEmailNode label];
                  v23 = [labelCopy isEqual:v22];

                  if (v23)
                  {
                    v7 = off_27893BBE8;
                  }

                  else
                  {
                    v24 = +[SKGPhoneNode label];
                    v25 = [labelCopy isEqual:v24];

                    if (v25)
                    {
                      v7 = off_27893BD40;
                    }

                    else
                    {
                      v26 = +[SKGReferenceNode label];
                      v27 = [labelCopy isEqual:v26];

                      if (v27)
                      {
                        v7 = off_27893BDA0;
                      }

                      else
                      {
                        v28 = +[SKGPersonaNode label];
                        v29 = [labelCopy isEqual:v28];

                        if (v29)
                        {
                          v7 = off_27893BD20;
                        }

                        else
                        {
                          v30 = +[SKGDomainNode label];
                          v31 = [labelCopy isEqual:v30];

                          v7 = off_27893BCE8;
                          if (v31)
                          {
                            v7 = off_27893BBB8;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v32 = *v7;
  v33 = objc_opt_class();

  return v33;
}

- (Class)edgeClassWithLabel:(id)label domain:(unsigned __int16)domain
{
  labelCopy = label;
  v5 = +[SKGUserEdge name];
  v6 = [labelCopy isEqual:v5];

  if (v6)
  {
    v7 = off_27893BDE8;
  }

  else
  {
    v8 = +[SKGPersonEdge name];
    v9 = [labelCopy isEqual:v8];

    if (v9)
    {
      v7 = off_27893BD00;
    }

    else
    {
      v10 = +[SKGContactEdge name];
      v11 = [labelCopy isEqual:v10];

      if (v11)
      {
        v7 = off_27893BB60;
      }

      else
      {
        v12 = +[SKGPhotoEdge name];
        v13 = [labelCopy isEqual:v12];

        if (v13)
        {
          v7 = off_27893BD58;
        }

        else
        {
          v14 = +[SKGEntityEdge name];
          v15 = [labelCopy isEqual:v14];

          if (v15)
          {
            v7 = off_27893BC10;
          }

          else
          {
            v16 = +[SKGDisplayNameEdge name];
            v17 = [labelCopy isEqual:v16];

            if (v17)
            {
              v7 = off_27893BB98;
            }

            else
            {
              v18 = +[SKGNameEdge name];
              v19 = [labelCopy isEqual:v18];

              if (v19)
              {
                v7 = off_27893BCB0;
              }

              else
              {
                v20 = +[SKGNameKeyEdge name];
                v21 = [labelCopy isEqual:v20];

                if (v21)
                {
                  v7 = off_27893BCB8;
                }

                else
                {
                  v22 = +[SKGEmailEdge name];
                  v23 = [labelCopy isEqual:v22];

                  if (v23)
                  {
                    v7 = off_27893BBE0;
                  }

                  else
                  {
                    v24 = +[SKGPhoneEdge name];
                    v25 = [labelCopy isEqual:v24];

                    if (v25)
                    {
                      v7 = off_27893BD38;
                    }

                    else
                    {
                      v26 = +[SKGReferenceEdge name];
                      v27 = [labelCopy isEqual:v26];

                      if (v27)
                      {
                        v7 = off_27893BD98;
                      }

                      else
                      {
                        v28 = +[SKGPersonaEdge name];
                        v29 = [labelCopy isEqual:v28];

                        if (v29)
                        {
                          v7 = off_27893BD10;
                        }

                        else
                        {
                          v30 = +[SKGDomainEdge name];
                          v31 = [labelCopy isEqual:v30];

                          v7 = off_27893BC50;
                          if (v31)
                          {
                            v7 = off_27893BBB0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v32 = *v7;
  v33 = objc_opt_class();

  return v33;
}

@end